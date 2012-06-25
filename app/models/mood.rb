class Mood < ActiveRecord::Base
  attr_accessible :description
  has_many :customers
  has_many :songs
end
