require 'spec_helper'

describe "Navigation" do
  include Capybara

  it "should be a valid app" do
    ::Rails.application.should be_a(Dummy::Application)
  end

  it "should link assets" do
    visit root_path
    RailsSlickgrid::ActionView::STYLESHEETS.each do |ss|
      page.should have_xpath("//link[contains(@href,'#{ss}')]")
    end
    RailsSlickgrid::ActionView::JAVASCRIPTS.each do |js|
      page.should have_xpath("//script[contains(@src,'#{js}')]")
    end
  end
end
