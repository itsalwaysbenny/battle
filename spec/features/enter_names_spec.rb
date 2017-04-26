describe "form" do
  it "allows users to enter their names Bob and Ali" do
  sign_in_and_play
    expect(page).to have_content("Player 1 is Bob")
    expect(page).to have_content("Player 2 is Ali")
  end
end

describe 'view points' do
  it "Allows you to see player 2's initial hit points of 100 hp" do
    sign_in_and_play
    expect(page).to have_content("100")
  end
end
