feature 'Shows you who lost/won' do
  scenario 'player who lost has 0HP' do
    sign_in_and_play
    10.times { attack_and_OK }
    click_link('Attack')
    expect(page).to have_content 'Jason has lost the game'
  end 
end 