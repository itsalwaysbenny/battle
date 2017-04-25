#
# describe "HOMEPAGE" do
#
#   # it "has text on the home page" do
#   #   visit('/')
#   #   expect(page).to have_content("Testing infrastructure working!")
#   # end
# end

describe "form" do
  it "allows users to enter their names Bob and Ali" do
    visit('/')
    fill_in 'name1', with: 'Bob'
    fill_in 'name2', with: 'Ali'
    click_button "OK!"
    expect(page).to have_content("Player 1 is Bob")
    expect(page).to have_content("Player 2 is Ali")
  end
end
