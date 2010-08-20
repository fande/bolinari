require File.dirname(__FILE__) + '/../spec_helper'

describe GenresController do
  describe "route generation" do
    it "should route genre's 'index' action correctly" do
      route_for(:controller => 'genres', :action => 'index').should == "/genres"
    end
  end
end
