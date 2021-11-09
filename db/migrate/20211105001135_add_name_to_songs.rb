class AddNameToSongs < ActiveRecord::Migration[6.0]
  def change
    change_table :songs do |t|
      t.text :name
    end
  end
end
