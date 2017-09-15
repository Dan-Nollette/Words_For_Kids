require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('root route', {:type => :feature}) do
  it('takes the user to a page where they can enter a word') do
    visit('/')
    expect(page).to have_content('Add a Word')
  end

  it('processes the user entry and goes to page where word and definitions are displayed') do
    visit('/')
    fill_in('word_name', :with => 'Chair')
    fill_in('definition', :with => 'to sit on')
    click_button('Go!')
    expect(page).to have_content('Chair')
    Word.clear
  end
end
