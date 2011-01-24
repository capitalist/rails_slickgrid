module RailsSlickgrid
  module ColumnExtractor
    extend self
    def from_data(data)
      return from_hash_keys(data) if data.first.is_a? Hash
      return from_ar_columns(data) if data.first.is_a? ActiveRecord::Base
      return data
    end

    def from_hash_keys data
      data.first.keys.collect do |kee|
	{:id => kee, :name => kee.to_s.humanize, :field => kee}
      end
    end

    def from_ar_columns data
      # TODO: add size info
      data.first.class.content_columns.collect do |col|
	{:id => col.name, :name => col.name.to_s.humanize, :field => col.name}
      end
    end
  end
end
