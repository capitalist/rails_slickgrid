require 'rails_slickgrid'

module RailsSlickgrid
  class Railtie < Rails::Railtie
    initializer "rails_slickgrid.action_view" do |app|
      require 'rails_slickgrid/action_view'
      ::ActionView::Base.send(:include, RailsSlickgrid::ActionView)
    end
  end
end

