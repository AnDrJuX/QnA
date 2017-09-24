require 'rails_helper'

feature 'create question', %q{
   In order to get answer from community
   As an authencate user
   I want to be able ask questions
 } do

  scenario 'Authethicated user create question' do
    User.create!(email: 'user@test.com', password: '12345678')
    visit new_user_session_path
    fill_in 'Email', with: 'user@test.com'
    fill_in 'Password', with: '12345678'
    click_on 'Log in'

    visit questions_path
    click_on 'Ask question'
    fill_in 'Title', with: 'Test question'
    fill_in 'Body', with: 'text text'
    click_on 'Create'

    expect(page).to have_content 'Your question was successfully created'

  end

  scenario 'Non-Authethicated user create question' do
    visit questions_path
    click_on 'Ask question'
    #save_and_open_page

    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end