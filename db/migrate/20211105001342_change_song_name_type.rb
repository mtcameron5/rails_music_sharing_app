class ChangeSongNameType < ActiveRecord::Migration[6.0]
  def change
    change_table :songs do |t|
      t.change :name, :string
    end
  end
end
