require 'rails_helper'
describe ParkService do
  context "instance methods" do
    context "#parks_by_state" do
      it "returns park data", :vcr do
        search = ParkService.parks_by_state("TN")
        expect(search).to be_a Hash
        expect(search[:data]).to be_an Array
        park_data = search[:data].first

        expect(park_data).to have_key :fullName
        expect(park_data[:name]).to be_a(String)

        expect(park_data).to have_key :description
        expect(park_data[:description]).to be_a(String)

        expect(park_data).to have_key :directionsInfo
        expect(park_data[:directionsInfo]).to be_a(String)

        expect(park_data).to have_key :operatingHours
        expect(park_data[:operatingHours]).to be_a(Array)

        expect(park_data[:operatingHours][0]).to have_key :standardHours
        expect(park_data[:operatingHours][0]).to be_a(Hash)
      end
    end
  end
end
