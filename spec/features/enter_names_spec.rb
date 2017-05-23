feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Cuddles'
    fill_in :player_2_name, with: 'Brian'
    click_button 'Submit'
    expect(page).to have_content "Cuddles vs. Brian"
  end
end
