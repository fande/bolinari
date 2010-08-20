require File.dirname(__FILE__) + '/../spec_helper'

describe Artist do
  it 'should create' do
    artist = Artist.create(:name => "Mayhem", :genre_id => 1)
    artist.should be_valid
  end

  it 'should not create' do
    artist = Artist.create(:name => "", :genre_id => 1)
    artist.should_not be_valid
  end

  it 'should have an unique name' do
    artist = Artist.create(:name => 'Burzum', :genre_id => 1)
    artist_clone = Artist.create(:name => 'Burzum', :genre_id => 1)
    artist.clone.should_not be_valid
  end
  
  it 'should have an unique genre' do
    artist = Artist.create(:name => "Mayhem", :genre_id => '1')
    artist.should be_valid
  end
  
  it 'should not have an unique genre' do
    artist = Artist.create(:name => "Mayhem", :genre_id => '1')  
    artist = Artist.create(:name => "Mayhem", :genre_id => '1')
    artist.should_not be_valid
  end

end
    
