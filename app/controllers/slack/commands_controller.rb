require 'json'
require 'uri'
require 'openssl'
require 'active_support/security_utils'


class Slack::CommandsController < ApiController

	skip_before_action :verify_authenticity_token
  	before_action :verify_slack_request


  	def index 
  		@meetings = Meeting.all
  # 		@meeting = Meeting.new
		# @meeting.scribe_id = 2
		# @meeting.agendaText(params[:text])
		# @meeting.save
	end


	def create
		json={
				"blocks": [
					{
						"type": "actions",
						"elements": [
							{
								"type": "button",
								"text": {
									"type": "plain_text",
									"text": "Click Me",
									"emoji": true
								},
								"value": "click_me_123",
								"action_id": "actionId-0"
							}
						]
					},
					{
						"type": "actions",
						"elements": [
							{
								"type": "conversations_select",
								"placeholder": {
									"type": "plain_text",
									"text": "Select private conversation",
									"emoji": true
								},
								"filter": {
									"include": [
										"private"
									]
								},
								"action_id": "actionId-0"
							}
						]
					}
				]
			}
		render json: json	
	end

	# Not in use
	def show 
		json = 
					{
			"title": {
				"type": "plain_text",
				"text": "Modal Title"
			},
			"submit": {
				"type": "plain_text",
				"text": "Submit"
			},
			"blocks": [
				{
					"type": "input",
					"element": {
						"type": "plain_text_input",
						"action_id": "title",
						"placeholder": {
							"type": "plain_text",
							"text": "What do you want to ask of the world?"
						}
					},
					"label": {
						"type": "plain_text",
						"text": "Title"
					}
				},
				{
					"type": "input",
					"element": {
						"type": "multi_channels_select",
						"action_id": "channels",
						"placeholder": {
							"type": "plain_text",
							"text": "Where should the poll be sent?"
						}
					},
					"label": {
						"type": "plain_text",
						"text": "Channel(s)"
					}
				},
				{
					"type": "input",
					"element": {
						"type": "plain_text_input",
						"action_id": "option_1",
						"placeholder": {
							"type": "plain_text",
							"text": "First option"
						}
					},
					"label": {
						"type": "plain_text",
						"text": "Option 1"
					}
				},
				{
					"type": "input",
					"element": {
						"type": "plain_text_input",
						"action_id": "option_2",
						"placeholder": {
							"type": "plain_text",
							"text": "How many options do they need, really?"
						}
					},
					"label": {
						"type": "plain_text",
						"text": "Option 2"
					}
				}
			],
			"type": "modal"
		}
		render json: json	
	end

	def post
		head :ok
		# url = URI(params[:payload][:response_url])
		# teamToken =	"xoxb-1970298615825-1974564306850-P3rhsSDDJSvWwcrZCwZydLjT"

	    request.body.rewind
	    request_data = request.body.read
	    request_data = URI.decode_www_form_component(request_data, enc=Encoding::UTF_8)
	    request_data = JSON.parse(request_data.sub!('payload=', ''))
	    url = request_data['response_url']
		response = Faraday.post(url, '{"text": "zap2.0"}')
		response = Faraday.post(url, '{
					"blocks": [
						{
							"type": "actions",
							"elements": [
								{
									"type": "button",
									"text": {
										"type": "plain_text",
										"text": "Click Me",
										"emoji": true
									},
									"value": "click_me_3",
									"action_id": "actionId-0"
								}
							]
						}
					]
				}')
		puts "This is the actions_Data #{request_data['actions']}"
		puts "This is the value #{request_data['actions'][0]['value']}"

	end


	def event 
		json = {
				"challenge": params[:challenge]
		}
		render json: json	
		teamToken =	"xoxb-1970298615825-1974564306850-P3rhsSDDJSvWwcrZCwZydLjT"
	    slack_client = Slack::Web::Client.new(token: teamToken)
		if params[:event][:type] == "app_mention"	
	        slack_client.chat_postEphemeral(
	        	channel: params[:event][:channel],
	        	user: params[:event][:user],
	        	# attachments: [{"pretext": "pre-hello", "text": "text-world"}],
	        	# text: "hello world"
	        	# thread_ts: params[:event][:ts],
        		blocks: [
						{
							"type": "section",
							"text": {
								"type": "mrkdwn",
								"text": "Your meeting has been created. Go into the thread to add discussions and action items."
							}
						}
					]
	        	)
	        slack_client.chat_postMessage(
	        	channel: params[:event][:channel],
	        	user: params[:event][:user],
	        	# attachments: [{"pretext": "pre-hello", "text": "text-world"}],
	        	# text: "hello world"
	        	thread_ts: params[:event][:ts],
        		blocks: [
							{
								"type": "modal",
								"callback_id": "modal-identifier",
								"title": {
								"type": "plain_text",
								"text": "Just a modal"
								},
								"blocks": [
								{
								  "type": "section",
								  "block_id": "section-identifier",
								  "text": {
								    "type": "mrkdwn",
								    "text": "*Welcome* to ~my~ Block Kit _modal_!"
								  },
								  "accessory": {
								    "type": "button",
								    "text": {
								      "type": "plain_text",
								      "text": "Just a button",
								    },
								    "action_id": "button-identifier",
								  }
								}
								],
							}	
					]
	        	)
	    else
	    	slack_client.chat_postMessage(channel: channelID, 
	        	text: "Some other meessage")
	    end
	    	
	end



	private

	def verify_slack_request
		timestamp = request.headers['X-Slack-Request-Timestamp']
		if (Time.now.to_i - timestamp.to_i).abs > 60 * 5
			head :unauthorized
			return
		end

		sig_basestring  = "v0:#{timestamp}:#{request.raw_post}"
		signature       = "v0=" + OpenSSL::HMAC.hexdigest("SHA256", Rails.application.credentials.slack_signing_secret, sig_basestring)
		slack_signature = request.headers['X-Slack-Signature']

		if !ActiveSupport::SecurityUtils.secure_compare(signature, slack_signature)
			head :unauthorized
		end
	end



end