feature 'Entering player names' do
  scenario 'Names will be displayed after submitting form' do
    visit('/')
    fill_in :name_one, with: 'Kerri'
    fill_in :name_two, with: 'Jason'
    click_button("Submit")
    expect(page).to have_content 'Kerri VS. Jason!'
  end 
end 

