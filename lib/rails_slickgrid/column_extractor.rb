module RailsSlickgrid
  module ColumnExtractor
    extend self
    def from_data(data)
      data.first.keys.collect do |kee|
	{:id => kee, :name => kee.to_s.humanize, :field => kee}
      end
    end
  end
end
