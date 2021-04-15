def sign_in_and_play
  visit('/')
  fill_in(:name_one, with: 'Kerri')
  fill_in(:name_two, with: 'Jason')
  click_button('Submit')
end