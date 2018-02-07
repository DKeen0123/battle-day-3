def sign_in_and_play
  visit('/')
  fill_in 'Player1', with: 'July'
  fill_in 'Player2', with: 'Jill'
  click_button 'Submit'
end
