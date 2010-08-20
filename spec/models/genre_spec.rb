require File.dirname(__FILE__) + '/../spec_helper'

describe Genre do
  it "should be create" do
    Genre.create(:name => "black metal")
    product.should be_valid
  end
  
  it "should be not create" do
    Genre.create(:name => "black metal")
    product.should_not be_valid
  end
end
