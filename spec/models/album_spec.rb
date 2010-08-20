require File.dirname(__FILE__) + '/../spec_helper'

describe Album do
  it "should create" do
    album = Album.create(:name => "Antonomalia Puris Macabriss")
    album.should be_valid
  end
  
  it "should not create" do
    album = Album.create(:name => "")
    album.should_not be_valid
  end
  
end
