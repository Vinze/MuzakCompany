class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :description

      t.timestamps
    end
  end
end
