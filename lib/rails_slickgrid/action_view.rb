module RailsSlickgrid
  module ActionView
    STYLESHEETS = %w(slick.columnpicker slick.grid slick.pager)
    JAVASCRIPTS = %w(slick.columnpicker slick.editors slick.model slick.pager slick.grid)

    def slickgrid_assets
      (slickgrid_stylesheets + slickgrid_javascripts).html_safe
    end

    def slickgrid_stylesheets
      STYLESHEETS.map do |ss|
	stylesheet_link_tag("slickgrid/#{ss}")
      end.join("\n")
    end

    def slickgrid_javascripts
      JAVASCRIPTS.map do |ss|
	javascript_include_tag("slickgrid/#{ss}")
      end.join("\n")
    end
  end
end
