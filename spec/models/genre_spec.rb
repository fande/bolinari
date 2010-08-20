require File.dirname(__FILE__) + '/../spec_helper'

describe Genre do
  it "should be create" do
    genre = Genre.create(:name => "black metal")
    genre.should be_valid
  end
  
  it "should be not create" do
    genre = Genre.create(:name => "black metal")
    genre .should_not be_valid
  end
end
