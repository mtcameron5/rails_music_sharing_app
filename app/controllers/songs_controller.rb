class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    binding.pry
    Song.validate_attachment(song_params[:mp3_file])
    @song = Song.new song_params
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
    # params.require(:name, :mp3_file, :artist_name, :song_genre, :authenticity_token, :commit)
  end

end