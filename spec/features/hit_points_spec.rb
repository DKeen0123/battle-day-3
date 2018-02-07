feature "show hit points" do
  scenario "it shows each player's hit points" do
    sign_in_and_play
    expect(page).to have_content("July: 100 hit points")
    expect(page).to have_content("Jill: 100 hit points")
  end
end
