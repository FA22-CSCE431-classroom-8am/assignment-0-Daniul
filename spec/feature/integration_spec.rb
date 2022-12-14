# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '13'
    fill_in 'Published date', with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry Potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content('13')
    expect(page).to have_content('1997-06-26')
  end

end
