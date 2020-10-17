require 'rails_helper'
RSpec.describe Park do
  it 'exists' do
    attrs = {
      fullName: "Denver Park of Imagination and Beauty",
        description: "The best park around!",
        directionsInfo: "Close your eyes and imagine a your perfect park",
        operatingHours: [{standardHours: "Whenever you want"}]
      }
    park = Park.new(attrs)
    expect(park).to be_a Park
    expect(park.name).to eq("Denver Park of Imagination and Beauty")
    expect(park.description).to eq("The best park around!")
    expect(park.directions).to eq("Close your eyes and imagine a your perfect park")
    expect(park.hours).to eq("Whenever you want")
  end
end
