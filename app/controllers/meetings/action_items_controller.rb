class Meetings::ActionItemsController < ApplicationController
	before_action :set_meeting
	before_action :authenticate_user!

	def create
		@action_item = @meeting.action_items.new (action_item)
		@action_item.save
		redirect_to @meeting, notice: "Your Action was assigned"
	end

	private

	def set_meeting 
		@meeting = Meeting.find(params[:meeting_id])
	end

	def action_item
		params.require(:action_item).permit(:item, :assignee_id)
	end

end