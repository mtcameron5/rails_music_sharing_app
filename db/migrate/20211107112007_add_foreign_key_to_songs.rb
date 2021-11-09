class AddForeignKeyToSongs < ActiveRecord::Migration[6.0]
  def change
    change_table :songs do |t|
      t.references :user, null: false, foreign_key: true
    end
  end
end
