require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the h1 'ENTOMOLOGIST'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'ENTOMOLOGIST')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'ENTOMOLOGIST | Home')
    end
  end
end