require File.dirname(__FILE__) + '/../spec_helper'

describe Artist do
  it 'should create' do
    artist = Factory.create(:artist)
    artist.should be_valid
  end

  it 'should not create' do
    artist = Factory.build(:artist, :name => nil )
    artist.save

    artist.errors.on(:name).should == ("Can't be blank")
    artist.should_not be_valid
  end

  it 'should have an unique name and an unique genre' do
    artist = Factory.build(:artist, :name => 'Lorem', :genre_id => '1' )
    artist.save

    artist_clone = Factory.build(:artist, :name => 'Lorem', :genre_id => '1')
    artist_clone.save
    
    artist_clone.errors.on(:name).should == ("Has already been taken")

    artist.clone.should_not be_valid
  end

  it "should have many albums" do
    artist = Factory.create(:artist)    
    artist.should respond_to(:albums)
  end

  it "should belong to genre" do
    artist = Factory.build(:artist)
    artist.save

    artist.should respond_to(:genre)
  end
end
