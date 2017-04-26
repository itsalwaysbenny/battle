describe 'Attacks player' do
  it "Allows player 1 to attack palyer 2" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Successful attack.")
  end
end
