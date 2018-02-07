require 'spec_helper'

feature "hit points" do

  scenario "player 1 has hit points on screen when starting" do
    sign_in_and_play
    expect(page).to have_content("Jill: 50 hit points")
  end
end
