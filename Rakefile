# encoding: UTF-8
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'rubygems'
require 'awesome_print'

begin require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rake'
require 'rake/rdoctask'

require 'rspec/core'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Rails Slickgrid'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require "rails_slickgrid/version"
task :build do
  system "gem build rails_slickgrid.gemspec"
end
 
task :release => :build do
  system "gem push rails_slickgrid-#{RailsSlickgrid::VERSION}.gem"
end

require 'rails_slickgrid/utils'
desc 'Download slickgrid assets'
task :download_slickgrid do
  stylesheets = {
    'https://github.com/mleibman/SlickGrid/raw/1.4.3/slick.columnpicker.css' => 'lib/generators/rails_slickgrid/install/stylesheets/:name',
    'https://github.com/mleibman/SlickGrid/raw/1.4.3/slick.grid.css'         => 'lib/generators/rails_slickgrid/install/stylesheets/:name',
    'https://github.com/mleibman/SlickGrid/raw/1.4.3/slick.pager.css'        => 'lib/generators/rails_slickgrid/install/stylesheets/:name',
  }

  javascripts = {
    'https://github.com/mleibman/SlickGrid/raw/1.4.3/slick.columnpicker.js' => 'lib/generators/rails_slickgrid/install/javascripts/:name',
    'https://github.com/mleibman/SlickGrid/raw/1.4.3/slick.editors.js'      => 'lib/generators/rails_slickgrid/install/javascripts/:name',
    'https://github.com/mleibman/SlickGrid/raw/1.4.3/slick.model.js'        => 'lib/generators/rails_slickgrid/install/javascripts/:name',
    'https://github.com/mleibman/SlickGrid/raw/1.4.3/slick.grid.js'         => 'lib/generators/rails_slickgrid/install/javascripts/:name',
    'https://github.com/mleibman/SlickGrid/raw/1.4.3/slick.pager.js'        => 'lib/generators/rails_slickgrid/install/javascripts/:name',
  }

  stylesheets.merge(javascripts).each do |url,path|
    RailsSlickgrid::Utils.curl url, '-o', path.gsub(/:name/,url.split('/').last)
  end
end

desc 'Convert coffee scripts in templates to js'
task :brew_coffee do
  Dir.glob('**/*.coffee').each do |fn|
    `coffee --bare -c #{fn}` 
  end
end
