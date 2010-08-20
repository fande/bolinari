require File.dirname(__FILE__) + '/../spec_helper'

describe Music do  
  it "should create" do
    music = Factory.build(:music)
    music.should be_valid
  end
  it "should not create" do
    music = Music.create(:name=>"")
    music.should_not be_valid
  end

  it "should have an unique name" do
    music = Music.create(:name => "punk rock")
    music_clone = Music.create(:name => "punk rock")
    music_clone.should_not be_valid
  end

  it "should not save without Album" do
    music = Music.create(:name => "punk rock")
    music.should_not be_valid
  end

end
