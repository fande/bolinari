class Music < ActiveRecord::Base
  belongs_to :album
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :album
  validates_presence_of :file
end
