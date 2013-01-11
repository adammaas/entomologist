require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the h1 'ENTOMOLOGIST'" do
      visit root_path
      page.should have_selector('h1', :text => 'ENTOMOLOGIST')
    end
    
    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title', :text => 'ENTOMOLOGIST')
    end
    
    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end
end