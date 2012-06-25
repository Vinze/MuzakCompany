class MoodsController < ApplicationController
	def index
		@moods = Mood.find(:all, :order => "description")
	end

	def new
		@mood = Mood.new
	end

	def create
		@mood = Mood.new(params[:mood])
		if @mood.save
			redirect_to @mood
		else
			render 'new'
		end
	end

	def edit
		@mood = Mood.find(params[:id])
	end

	def update
		@mood = Mood.find(params[:id])
		if @mood.update_attributes(params[:mood])
			redirect_to @mood
		else
			render 'edit'
		end
	end

	def show
		@mood = Mood.find(params[:id])
	end
end
