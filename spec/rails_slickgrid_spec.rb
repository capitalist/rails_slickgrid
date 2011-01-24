require 'spec_helper'
require 'rails_slickgrid'
require 'rails_slickgrid/column_extractor'
require 'rails_slickgrid/data_extractor'

describe RailsSlickgrid do
  it "should be valid" do
    RailsSlickgrid.should be_a(Module)
  end

  describe RailsSlickgrid::ColumnExtractor do
    context 'when data is an array of hashes' do
      let(:data) do
        [
          {:foo => 42, :bar => 747},
          {:foo => 44, :bar => 749},
          {:foo => 46, :bar => 750},
        ]
      end

      it "grabs the keys from the first hash" do
        columns = RailsSlickgrid::ColumnExtractor.from_data(data)
        columns.first.keys.include?(:field).should   be_true
        columns.first.keys.include?(:id).should      be_true
        columns.first.keys.include?(:name).should    be_true
      end
    end
  end

  describe RailsSlickgrid::DataExtractor do
    describe '.from_data' do
      context 'when passed hashes' do
        let(:data) do
          [
            {:foo => 42, :bar => 747},
            {:foo => 44, :bar => 749},
            {:foo => 46, :bar => 750},
          ]
        end

        it "returns them as is" do
          RailsSlickgrid::DataExtractor.from_data(data).should == data
        end
      end
    end
  end
end
