module RailsSlickgrid
  module ActionView
    STYLESHEETS = %w(slick.columnpicker slick.grid slick.pager)
    JAVASCRIPTS = %w(jquery.event.drag-2.0.min slick.columnpicker slick.editors slick.model slick.pager slick.grid)

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

    def slickgrid(data)
      (slickgrid_div + slickgrid_script(data)).html_safe
    end

    private
    def slickgrid_div
      content_tag(:div, '&nbsp;'.html_safe, :id => 'slickgrid', :style => 'width: 400px; height: 400px')
    end

    def slickgrid_script(data)
      content_tag(:script, slickgrid_function(data).html_safe , :type => 'text/javascript')
    end

    def slickgrid_function(data)
      "\n" +
      File.read( File.expand_path("../templates/grid.js", __FILE__) ).
	gsub(/\'COLUMNS_MARKER\'/,ColumnExtractor.from_data(data).to_json).
	gsub(/\'DATA_MARKER\'/, DataExtractor.from_data(data).to_json) +
      "\n"
    end

  end
end
