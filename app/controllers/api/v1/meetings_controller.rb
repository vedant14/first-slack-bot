class Api::V1::MeetingsController < ApiController


	def index
		@meetings = Meeting.all
	end

	def show 
		@meeting = Meeting.find(params[:id])
	end
end