feature 'Changes turns after attack' do
  scenario "P1 attacks then its P2's turn" do
    sign_in_and_play
    click_link('Attack')
    click_link('OK')
    click_link('Attack')
    expect(page).to have_content('Jason attacks Kerri')
  end

  #scenario to check HP for Kerri has changed
end