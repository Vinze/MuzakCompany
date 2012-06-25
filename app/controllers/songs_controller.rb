class SongsController < ApplicationController
	def index
		@songs = Song.find(:all, :order => 'artist')
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(params[:song])
		if @song.save
			redirect_to @song
		else
			render 'new'
		end
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.find(params[:id])
		if @song.update_attributes(params[:song])
			redirect_to @song
		else
			render 'edit'
		end
	end

	def show
		@song = Song.find(params[:id])
	end

	def destroy
		@song = Song.find(params[:id])
		$song.destroy
		redirect_to songs_path
	end
end
