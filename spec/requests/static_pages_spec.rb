require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the right title" do
      visit root_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content("Sample App")
    end

  end

  describe "Help page" do

    it "should have the right title" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content("Help")
    end

  end

  describe "About page" do

    it "should have the right title" do
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content("About Us")
    end

  end

  describe "Contact page" do

    it "should have the right title" do
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end

    it "should have the right content" do
      visit contact_path
      expect(page).to have_content("Contact")
    end

  end

end
