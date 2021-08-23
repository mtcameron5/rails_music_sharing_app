class Songs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :artist_name, :string
    add_column :songs, :song_genre, :string
  end
end
