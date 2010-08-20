class Artist < ActiveRecord::Base
  #belongs_to :genre
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :genre_id

end
