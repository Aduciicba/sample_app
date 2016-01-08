require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "home_page" do
    it "must have home page" do
      get static_pages_home_path
      expect(response).to have_http_status(200)
    end

    it "must have text Sample_App" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample_App')
    end

    it "must have Home in title" do
      visit '/static_pages/home'
      expect(page).to have_title('Home')
    end
  end

  describe "help page" do
    it "must have help page" do
      get static_pages_help_path
      expect(response).to have_http_status(200)
    end

    it "must have Help in title" do
      visit '/static_pages/home'
      expect(page).to have_title('Home')
    end
  end

  describe "about page" do
    it "must have about page" do
      get static_pages_about_path
      expect(response).to have_http_status(200)
    end
  end

  describe "contact page" do
    it "must have contact page" do
      get static_pages_contact_path
      expect(response).to have_http_status(200)
    end
  end

end
