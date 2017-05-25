feature 'Attack mode!' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Cuddles attacked Brian'
  end

  scenario 'reduces an opponents hitpoints when attacked' do
    sign_in_and_play
    click_button("Attack")
    expect(page).not_to have_content 'Brian: 100 HP'
    expect(page).to have_content 'Brian: 90 HP'
  end
end
