# Rails Slickgrid #

Rails Slickgrid is an effort to make the fast javascript grid/spreadsheet [SlickGrid](https://github.com/mleibman/SlickGrid) easier to use in rails.

It currently only generates the static assets into your `javascripts` and `stylesheets` but automatic grid generation is under development.

## Installation

1. Add `gem 'rails_slickgrid'` to your Gemfile
2. `bundle install`
3. `rails generate rails_slickgrid:install`
4. In your layout or view call `slickgrid_assets`

## TODO
1. Automatic grid generation
2. Column Detection
3. Editable Grids
4. Client side filters
5. Server side filters

## Copyright

SlickGrid itself is Copyright (c) 2010 Michael Leibman, http://github.com/mleibman/slickgrid
Rails Slickgrid is Copyright (c) 2011 Joe Martinez, https://github.com/capitalist/rails_slickgrid
