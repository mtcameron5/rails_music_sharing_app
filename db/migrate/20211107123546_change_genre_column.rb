class ChangeGenreColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :songs, :song_genre
    add_column :songs, :genre, :string
  end
end
