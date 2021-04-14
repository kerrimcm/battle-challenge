feature 'Enter player names' do
  scenario 'Submitting names in a form' do
    visit('/')
    fill_in :name_one, with: 'Kerri'
    fill_in :name_two, with: 'Jason'
    click_button('Submit')

    # save_and_open_page 
    
    expect(page).to have_content 'Kerri vs. Jason'
  end 

  scenario 'it allows to see player 2 hit point' do
    visit('/')
    fill_in :name_one, with: 'Kerri'
    fill_in :name_two, with: 'Jason'
    click_button('Submit')
    save_and_open_page
    expect(page).to have_content 'Jason has 60HP'
  end

end 

