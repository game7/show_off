require 'rails_helper'

feature "Articles", :type => :feature do

  scenario "creating an article" do
    visit '/articles'
    click_link "New Article"
    fill_in "Title", :with => "Test"
    fill_in "Content", :with => "Hello World!"
    click_button "Create Article"
    success_message = "Article was successfully created."
    expect(page).to have_content(success_message)
  end
  
end
