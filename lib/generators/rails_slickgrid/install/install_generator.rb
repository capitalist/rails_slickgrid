module RailsSlickgrid
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("..", __FILE__)
      desc "Copies Slickgrid assets into your public directory."

      def copy_stylesheets
        directory 'stylesheets', 'public/stylesheets/slickgrid'
      end

      def copy_javascripts
        directory 'javascripts', 'public/javascripts/slickgrid'
      end
    end
  end
end

