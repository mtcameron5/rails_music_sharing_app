class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    # binding.pry
    @song = current_user.songs.build(song_params)
    if @song.save
      flash[:success] = "Song Uploaded"
      redirect_to songs_path
    else
      render 'new'
    end
  end

  private
  def song_params
    params.require(:song).permit(:mp3_file, :image_file, :genre, :authenticity_token, :name)
  end
end