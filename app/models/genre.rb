class Genre < ActiveRecord::Base
  #has_many :artists
  validates_presence_of :name
  validates_uniqueness_of :name
end
