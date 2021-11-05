class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new song_params
    # binding.pry
    if @song.save
      flash[:success] = "Song Uploaded"
      redirect_to songs_path
    else
      render 'new'
    end
  end

  private
  def song_params
    params.require(:song).permit(:mp3_file, :artist_name, :song_genre, :authenticity_token)
  end

end