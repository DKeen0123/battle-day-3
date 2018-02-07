feature "show hit points" do
  scenario "it shows each player's hit points" do
    visit('/')
    fill_in 'Player1', with: 'July'
    fill_in 'Player2', with: 'Jill'
    click_button 'Submit'
    expect(page).to have_content("July: 100 hit points")
    expect(page).to have_content("Jill: 100 hit points")
  end
end