feature 'Enter player names' do
  scenario 'it allows to see player 2 hit point' do
    sign_in_and_play
    expect(page).to have_content 'Jason has 60HP'
  end
end 

feature 'Displaying player 1 HP' do
  scenario 'it also shows player 1 HP on play' do
    sign_in_and_play
    expect(page).to have_content 'Kerri has 60HP'
  end 
end
