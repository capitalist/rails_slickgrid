module RailsSlickgrid
end

require 'rails_slickgrid/column_extractor'
require 'rails_slickgrid/data_extractor'

if defined?(::Rails::Railtie)
  require 'rails_slickgrid/railtie'
end

