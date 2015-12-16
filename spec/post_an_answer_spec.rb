require 'rails_helper'

feature "user posts an answer to a question" do

  scenario "successfully posts an answer" do
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
