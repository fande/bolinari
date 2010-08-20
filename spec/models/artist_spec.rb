require File.dirname(__FILE__) + '/../spec_helper'

describe Artist do
  it 'should create' do
    artist = Factory.create(:name, :artist_id )
    artist.should be_valid
  end

  it 'should not create' do
    artist = Factory.create(:name, :artist_id )
    #artist.save

    artist.errors.on(:name).should == ("Can't be blank")
    artist.should_not be_valid
  end

  it 'should have an unique name and an unique artist' do
    artist = Factory.create(:name, :artist_id )
    #artist.save

    artist_clone = Factory.create(:name, :artist_id)
    #artist_clone.save
    artist_clone.errors.on(:name).should == ("Has already been taken")

    artist.clone.should_not be_valid
  end

  it "should have many albums" do
    artist = Factory.create(:name, :artist_id)    
    artist.should respond_to(:albums)
  end

  it "should belong to artist" do
    artist = Factory.create(:name, :artist_id)
    artist.should respond_to(:artist)
  end
end
