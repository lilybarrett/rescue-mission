require 'rails_helper'

feature "user posts a questions" do

  scenario "successfully posts a question" do
  visit questions_path
  click_on(question.title)

  end
  scenario "title doesn't meet character minimum" do
  visit questions_path
  click_on(question.title)

  end
  scenario "description doesn't meet character minimum" do
  visit questions_path
  click_on(question.title)

  end


end

#visit index page
#click on link to form
#got to new page
#expect page to have css type form
#if user fills out form incorrectly, takes you to show page & see flash notice
#test for incorrect contexts
