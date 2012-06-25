class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.time :length
      t.integer :mood_id

      t.timestamps
    end
  end
end
