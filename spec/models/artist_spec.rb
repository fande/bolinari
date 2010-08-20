require File.dirname(__FILE__) + '/../spec_helper'

describe Artist do
  it 'should create' do
    artist = Artist.create(:name => "Mayhem")
    artist.should be_valid
  end

  it 'should not create' do
    artist = Artist.create(:name => "")
    artist.should_not be_valid
  end

  it 'should have an unique name' do
    artist = Artist.create(:name => 'Burzum')
    artist_clone = Artist.create(:name => 'Burzum')
    artist.clone.should_not be_valid
  end
  
  it 'should have an unique genre' do
    artist = Artist.create(:genre_id => '1')
    artist.should be_valid
  end
  
  it 'should not have an unique genre' do
    artist = Artist.create(:genre_id => '')
    artist.should_not be_valid
  end

end
    
