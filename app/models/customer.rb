class Customer < ActiveRecord::Base
  attr_accessible :mood_id, :name
  belongs_to :mood
  
  validates :name, presence: true, length: { minimum: 2 }
end