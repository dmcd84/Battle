feature 'request player hit points' do
  scenario 'see player hit points' do
    sign_in_and_play
    expect(page).to have_content 'Brian: 100HP'
  end
end
