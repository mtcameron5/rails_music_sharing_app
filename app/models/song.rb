class Song < ApplicationRecord
  has_one_attached :mp3_file
  
  validates :artist_name, presence: true
  validates :song_genre, presence: true
  validates :name, presence: true
  
  def self.is_mp3_file?(mp3_file)
    p mp3_file
  end

end
