class MeetingsController < ApplicationController

	before_action :set_meeting, only: [:show, :destroy, :edit, :update]
	before_action :authenticate_user!, except: [:index]

	def index
		@meetings = Meeting.all
	end

	def show 
	end

	def new
		@meeting = Meeting.new
		@meeting.discussions.new
	end


	def create
		@meeting = current_user.meetings.new(meeting_params)
		@meeting.discussions.first.user = current_user

	    respond_to do |format|
	      if @meeting.save
	        format.html { redirect_to @meeting, notice: 'meeting was successfully created.' }
	        format.json { render :show, status: :created, location: @meeting }

	      else
	        format.html { render :new }
	        format.json { render json: @meeting.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def edit
	end

	def update
	respond_to do |format|
		  if @meeting.update(meeting_params)
	        format.html { redirect_to @meeting, notice: 'meeting was successfully created.' }
	        format.json { render :show, status: :created, location: @meeting }
		  else
	        format.html { render :new }
	        format.json { render json: @meeting.errors, status: :unprocessable_entity }

		  end
		end
	end


	def destroy
	@meeting.destroy
		respond_to do |format|
		  format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
		  format.json { head :no_content }
		end
	end

	private

	def meeting_params
      params.require(:meeting).permit(:agenda, 
      	meeting_participants_attributes: [:user_id, :_destroy], 
      	action_items_attributes: [:user_id, :item, :_destroy], 
      	discussions_attributes: [:content] )
	end

    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

end

