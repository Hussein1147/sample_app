require 'spec_helper'

describe PagesController do
  
  render_views
  
  
  before(:each) do
    @base_title = "Zappening, what's happening around you?"
     
  end
  
  
  
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should  be susscessful" do
      get 'home'
       response.should have_selector('title',
                                      :content=>"#{@base_title} |Home")
    end
    it "should have no-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  
  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    it "should  be susscessful" do
      get 'contact'
       response.should contain("#{@base_title} |Contact")
    end
  end
  
  
  describe "GET 'about'" do
    
    
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    it "should  be susscessful" do
      get 'about'
       response.should have_selector('title', :content=>"#{@base_title} |About")
    end
  end
  
  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
    it "should  be susscessful" do
      get 'help'
       response.should have_selector('title', :content=>"#{@base_title} |Help")
    end
  end

end
