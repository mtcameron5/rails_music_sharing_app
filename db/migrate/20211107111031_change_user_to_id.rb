class ChangeUserToId < ActiveRecord::Migration[6.0]
  def change
    remove_column :songs, :artist_name
    add_column :songs, :artist_id, :integer
  end
end
