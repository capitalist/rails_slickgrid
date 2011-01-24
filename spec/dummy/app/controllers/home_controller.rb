class HomeController < ApplicationController
  def index
    @widgets = [
      {:name => 'Widget 1', :price => 20.00},
      {:name => 'Widget 2', :price => 10.00}
    ]
  end
end
