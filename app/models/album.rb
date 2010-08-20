class Album < ActiveRecord::Base
  belongs_to :artist
  validates_presence_of :name, :artist_id
end
