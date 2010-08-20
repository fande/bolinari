require File.dirname(__FILE__) + '/../spec_helper'

describe Album do
  it "should create" do
    album = Album.create(:name => "Antonomalia Puris Macabriss", :artist_id => 1 )
    album.should be_valid
  end
  
  it "should not create" do
    album = Album.create(:name => "")
    album.should_not be_valid
  end
  
  it "should not create without artist" do
    album = Album.create(:name => "Limp Biskit")
    album.should_not be_valid
  end
  
  
  it "should belong to artist" do
    album = Album.create(:name => "Limp Biskit", :artist_id => 1)
    album.should respond_to(:artist)
  end
end
