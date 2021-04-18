class Meetings::DiscussionsController < ApplicationController
	before_action :set_meeting
	before_action :authenticate_user!

	def create
		@discussion = @meeting.discussions.new (discussion_params)
		@discussion.user = current_user
		@discussion.save
		redirect_to @meeting, notice: "Your discussion was attached"
	end

	private

	def set_meeting 
		@meeting = Meeting.find(params[:meeting_id])
	end

	def discussion_params
		params.require(:discussion).permit(:content)
	end

end