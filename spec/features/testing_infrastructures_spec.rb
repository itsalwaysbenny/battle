#require_relative 'battle/app.rb'

describe "HOMEPAGE" do

    it "has text on the home page" do
      visit('/')
      expect(page).to have_content("Testing infrastructure working!")
    end
  end
