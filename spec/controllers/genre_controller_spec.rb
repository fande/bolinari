require File.dirname(__FILE__) + '/../spec_helper'

describe GenresController do
  describe "routes" do 
    it "genres index" do
      assert_recognizes({:controller => 'genres', :action => 'index'}, {:path => 'genres', :method => :get})
    end    
  end
  
  describe "actions" do 
    it "GET index" do
      genres_path
      response.should be_success     
    end

    it "GET show" do
      genre_path(:id => 1).should == "/genres/1"
      response.should be_success     
    end
    
    it "GET new" do
      new_genre_path.should == "/genres/new"
      response.should be_success     
    end

    it "GET edit" do
      edit_genre_path(:id => 1).should == "/genres/1/edit"
      response.should be_success    
    end

    it "should get all genres" do
      get :index
      genres = Genre.all
      response.should be_success
    end  

    it "should create and redirect" do
      genre = Factory.build(:genre)
      response.should be_success
    end
  end
end
