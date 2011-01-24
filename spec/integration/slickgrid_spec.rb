require 'spec_helper'

describe "Slickgrid" do
  include Capybara

  it "links assets" do
    visit root_path
    RailsSlickgrid::ActionView::STYLESHEETS.each do |ss|
      page.should have_xpath("//link[contains(@href,'#{ss}')]")
    end
    RailsSlickgrid::ActionView::JAVASCRIPTS.each do |js|
      page.should have_xpath("//script[contains(@src,'#{js}')]")
    end
  end

  it "generates a slickgrid" do
    visit root_path
    page.should have_xpath("//div[@class='slickgrid']")
  end
end
