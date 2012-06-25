class ChangeLengthFieldToInteger < ActiveRecord::Migration
  def change
  	change_column :songs, :length, :integer
  end
end
