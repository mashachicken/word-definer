require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates an word and then goes to the word page') do
    visit('/words')
     save_and_open_page
    click_on('Add a new word')
    fill_in('word_input', :with => 'Ladybug')
    click_on('Add word!')
    expect(page).to have_content('Ladybug')
  end
end
