feature "Attack player 2" do

  scenario "Get confirmation message of attack" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content "July attacked Jill"
  end

  scenario "Reduces Jill\'s HP by 10" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content "Jill's HP: 90"
  end

end
