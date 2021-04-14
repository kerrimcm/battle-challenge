feature 'Enter player names' do
  scenario 'Submitting names in a form' do
    sign_in_and_play
    expect(page).to have_content 'Kerri vs. Jason'
  end 
end 
