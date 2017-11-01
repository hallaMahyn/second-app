require 'spec_helper'

describe "Cool pages" do

  describe "Home page" do

    it "should have the content 'Cool Page'" do
      visit '/cool_pages/home'
      expect(page).to have_content('Cool Page')
    end

    it "should not have content some 'sheet'" do
      visit '/cool_pages/home'
      expect(page).to_not have_content('SHEET')
    end

    it "should have correct title" do
      visit '/cool_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end

  end

  describe "help page" do

    it "should have the content 'Pomogu'" do
      visit '/cool_pages/help'
      expect(page).to have_content('Pomogu')
    end

    it "should not have the content 'Huila'" do
      visit '/cool_pages/help'
      expect(page).to_not have_content('Huila')
    end

    it "should have correct title" do
      visit '/cool_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "about page" do

    it "should hame a some content 'About Us'" do
      visit '/cool_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have correct title" do
      visit '/cool_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About us")
    end

  end
end