describe 'Attacks player' do
  # it "Allows player 1 to attack player 2" do
  #   sign_in_and_play
  #   click_button('Attack!')
  #   expect(page).to have_content("OUCH")
  # end

  it "Player 2 hp reduced by 10" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('90 hp')
  end

end
