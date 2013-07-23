require 'spec_helper'

feature 'Creating Questions' do

  before do
    sign_in_as!(Factory(:user))
    visit '/'
    click_link 'New Question'
  end

  scenario "can create a question" do
    question_description = "What is the most important thing in life?"
    fill_in 'Description', :with => question_description
    click_button 'Create Question'
    page.should have_content('Question was successfully created.')
  end

  scenario "can not create a question without a description" do
    click_button 'Create Question'
    page.should have_content("Question has not been created")
    page.should have_content("Description can't be blank")
  end
end
