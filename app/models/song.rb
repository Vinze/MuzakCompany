class Song < ActiveRecord::Base
  attr_accessible :artist, :length, :mood_id, :title
  belongs_to :mood
end
