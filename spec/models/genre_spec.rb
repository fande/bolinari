require File.dirname(__FILE__) + '/../spec_helper'

describe Genre do
  it "should create" do
    genre = Genre.create(:name => "black metal")
    genre.should be_valid
  end
  
  it "should not create" do
    genre = Genre.create(:name => "")
    genre.should_not be_valid
  end
  
  it "should have an unique name" do
    genre = Genre.create(:name => "punk rock")
    genre_clone = Genre.create(:name => "punk rock")
    genre_clone.should_not be_valid
  end
end
