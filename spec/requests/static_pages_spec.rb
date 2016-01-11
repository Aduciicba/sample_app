require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "home_page" do

    it "must have home page" do
      get root_path
      expect(response).to have_http_status(200)
    end

    before {visit root_path}

    it "must have text SampleApp" do
      #visit static_pages_home_path
      expect(page).to have_content('SampleApp')
    end

    it "must have Home in title" do
      #visit static_pages_home_path
      expect(page).to have_title('Home')
    end
  end

  describe "help page" do
    it "must have help page" do
      get help_path
      expect(response).to have_http_status(200)
    end

    it "must have Help in title" do
      visit help_path
      expect(page).to have_title('Help')
    end
  end

  describe "about page" do
    it "must have about page" do
      get about_path
      expect(response).to have_http_status(200)
    end
  end

  describe "contact page" do
    it "must have contact page" do
      get contact_path
      expect(response).to have_http_status(200)
    end
  end

end
