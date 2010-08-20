require File.dirname(__FILE__) + '/../spec_helper'

describe Album do
  it "should create" do
    album = Factory.create(:album)
    #Album.create(:name => "Antonomalia Puris Macabriss", :artist_id => 1 )
    album.should be_valid
  end
  
  it "should not create without name" do
    album = Factory.create(:album, :name=>"")
    #Album.create(:name => "")
    album.should_not be_valid
  end
  
  it "should not create without artist" do
    album = Factory.create(:album, :artist_id=>"")
    #Album.create(:name => "Limp Biskit")
    album.should_not be_valid
  end
end
