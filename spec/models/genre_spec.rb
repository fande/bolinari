require File.dirname(__FILE__) + '/../spec_helper'

describe Genre do
  it "should create" do
    genre = Factory.create(:genre)
    genre.should be_valid
  end
  
  
  it "should not create" do
    genre = Factory.build(:genre, :name => nil)
    genre.save

    genre.errors.on(:name).should == ("can't be blank")
    genre.should_not be_valid
  end
  
  it "should have an unique name" do
    genre = Factory.build(:genre, :name => "Lipsum")
    genre.save

    genre_clone = Factory.build(:genre, :name => "Lipsum")
    genre_clone.save

    genre_clone.errors.on(:name).should == ("has already been taken")
    genre_clone.should_not be_valid
  end
  
  it "should have many artists" do
    genre = Factory.create(:genre)
    genre.should respond_to(:artists)
  end
end
