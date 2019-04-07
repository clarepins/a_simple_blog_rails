require 'rails_helper'

RSpec.feature 'blogs can be created and read', type: :feature do
  scenario 'a user can create a blog, save and read its contentes' do
    visit '/articles/new'
    fill_in 'Title', with: 'A test blog'
    fill_in 'Text', with: 'Some test text'
    click_button 'Save Article'
    expect(page).to have_content 'Title: A test blog'
    expect(page).to have_content 'Text: Some test text'
  end

  scenario 'a user can see list of blogs' do
    visit '/articles/new'
    fill_in 'Title', with: 'A test blog'
    fill_in 'Text', with: 'Some test text'
    click_button 'Save Article'
    visit '/articles/new'
    fill_in 'Title', with: 'Title2'
    fill_in 'Text', with: 'TextText2'
    click_button 'Save Article'
    visit '/articles'
    expect(page).to have_content 'A test blog'
    expect(page).to have_content 'Some test text'
    expect(page).to have_content 'Title2'
    expect(page).to have_content 'TextText2'
  end
end
