feature 'request player hit points' do
  scenario 'see player hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Cuddles'
    fill_in :player_2_name, with: 'Brian'
    click_button 'Submit'
    expect(page).to have_content 'Brian: 100HP'
  end
end
