def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'July'
  fill_in 'player2', with: 'Jill'
  click_button 'Submit'
end
