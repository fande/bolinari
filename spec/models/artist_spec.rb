require File.dirname(__FILE__) + '/../spec_helper'

describe Artist do
  it 'should create' do
    artist = Factory.create(:name, :genre_id )
    artist.should be_valid
  end

  it 'should not create' do
    artist = Factory.build(:genre_id, :name => nil )
    artist.save

    artist.errors.on(:name).should == ("Can't be blank")
    artist.should_not be_valid
  end

  it 'should have an unique name and an unique genre' do
    artist = Factory.build(:name => 'Lorem', :genre_id => 1 )
    artist.save

    artist_clone = Factory.build(:name => 'Lorem', :genre_id => 1)
    artist_clone.save
    
    artist_clone.errors.on(:name).should == ("Has already been taken")

    artist.clone.should_not be_valid
  end

  it "should have many albums" do
    artist = Factory.create(:name, :genre_id)    
    artist.should respond_to(:albums)
  end

  it "should belong to artist" do
    artist = Factory.build(:name, :genre_id)
    artist.save

    artist.should respond_to(:artist)
  end
end
