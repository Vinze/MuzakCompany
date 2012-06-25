class ChangeSongLengthToDecimal < ActiveRecord::Migration
  def change
  	change_column :songs, :length, :decimal, :precision => 8, :scale => 2
  end
end
