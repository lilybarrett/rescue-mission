require 'rails_helper'

feature "user visits questions" do
  scenario "see all the questions" do
    question_1 = Question.create(title: "What is a capybara?", description: "Cuz I have no idea.")
    question_2 = Question.create(title: "Why is the new Star Wars so bad?", description: "This is a real question, definitely not just an opinion.")

    visit questions_path
    expect(page).to have_content(question_1.title)
    expect(page).to have_content(question_2.title)

    expect(page).to have_css("ul li:nth-child(1)", text: question_1.title)
  end

end
