require 'spec_helper'

describe "LayoutLinks" do

  it "should the right layout links" do
    visit root_path
    click_link "About"
    response.should have_selector('title', :content =>"About")
    click_link "Help"
    response.should have_selector('title', :content =>"Help")
    click_link "Contact"
    response.should have_selector('title', :content =>"Contact")
    click_link "Home"
    response.should have_selector('title', :content =>"Home")
    click_link "Sign Up now!"
    response.should have_selector('title', :content =>"Sign up")
    
  end
end