# Rails Slickgrid #

Rails Slickgrid is an effort to make the fast javascript grid/spreadsheet [SlickGrid](https://github.com/mleibman/SlickGrid) easier to use in rails.

## What It Can Do
1. Generates the static assets for slickgrid into your public directory
2. Provides a method to include these assets in your layout
3. Generates a slickgrid from an array of hashes

## Installation

1. Add `gem 'rails_slickgrid'` to your Gemfile
2. `bundle install`
3. `rails generate rails_slickgrid:install`
4. In your layout or view call `slickgrid_assets`


## SlickGrid Dependencies

1. You need to have jQuery loaded
2. You need to have jQuery UI as SlickGrid uses it

## Usage

After installing, in your view simply `slickgrid(data)` where data is an array of hashes.

## TODO
1. Automatic grid generation
2. Column Detection
3. Editable Grids
4. Client side filters
5. Server side filters

## Copyright

SlickGrid itself is Copyright (c) 2010 Michael Leibman, http://github.com/mleibman/slickgrid

Rails Slickgrid is Copyright (c) 2011 Joe Martinez, https://github.com/capitalist/rails_slickgrid
