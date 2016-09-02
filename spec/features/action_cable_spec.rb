require 'rails_helper'

RSpec.describe 'Chat behavior', type: :feature, driver: :webkit do

  before(:all) do
    @room = create :room
  end

  it 'should be able to open two sessions in parallel' do

    Capybara.using_session("Alice's session") do
      login_with 'alice'
      visit "/rooms/#{@room.id}"
    end

    Capybara.using_session("Bob's session") do
      login_with 'bob'
      visit "/rooms/#{@room.id}"
    end

    Capybara.using_session("Alice's session") do
      expect(page.body).to have_css('#current_user', text:'alice')
    end

    Capybara.using_session("Bob's session") do
      expect(page.body).to have_css('#current_user', text:'bob')
    end

  end

  private
  def login_with user
    visit 'login'
    fill_in 'username', with: user
    click_button 'Login'
  end

end
