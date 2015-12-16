require 'rails_helper'

feature "user visits question's show page" do
  let!(:question) { Question.create(title: "What is a capybara?", description: "Cuz I have no idea.") }
  scenario "sees question details" do
    visit questions_path
    # question_1 = Question.create(title: "What is a capybara?", description: "Cuz I have no idea.")

    click_on(question.title)
    expect(page).to have_content(question.title)
    expect(page).to have_content(question.description)
  end

end
