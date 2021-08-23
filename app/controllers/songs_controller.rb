class SongsController < ApplicationController 
  def index 
    @songs = Song.all
  end

  def new 
    @song = Song.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "Welcome to the Music Sharing App"
      redirect_to @user
    else
      render 'new'
    end
  end


  def create 
    # p Song.is_mp3_file?(song_params['mp3_file'])
    hsh = { mp3_file: song_params["mp3_file"], name: song_params["name"],
      artist_name: song_params["artist_name"], song_genre: song_params["song_genre"] }
    @song = Song.new(hsh)
    if @song.save
      flash[:success] = "Song Uploaded"
      redirect_to songs_path
    else 
      render 'new'
    end


    # p "hsh #{hsh}" 
    # song = Song.create!(hsh)
    # redirect_to songs_path
  end

  private 
    def song_params 
      params.permit(:name, :mp3_file, :artist_name, :song_genre, :authenticity_token, :commit)
    end
end