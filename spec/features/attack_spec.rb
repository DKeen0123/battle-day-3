feature 'Attack player 2' do
  scenario 'Get confirmation message of attack' do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content 'July attacked Jill'
  end
end
