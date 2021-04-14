feature 'Players can attacks each other' do
  scenario 'it allows to return an attack message' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content('Kerri attacks Jason')
  end
end