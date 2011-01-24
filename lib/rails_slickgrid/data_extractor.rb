module RailsSlickgrid
  module DataExtractor
    extend self

    def from_data(data)
      return from_ar(data) if data.first.is_a? ActiveRecord::Base
      return data
    end

    def from_ar(data)
      data.collect(&:attributes)
    end
  end
end
