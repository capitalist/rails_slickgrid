# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "rails_slickgrid"
  s.summary = "Allows easy rendering of Slickgrids in Rails 3 views."
  s.description = ""
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.version = "0.0.4"

  s.authors = ['Joe Martinez']
  s.email = 'joe@joemartinez.name'
  s.homepage = 'http://github.com/capitalist/rails_slickgrid'
  s.date = '2011-01-22'
end
