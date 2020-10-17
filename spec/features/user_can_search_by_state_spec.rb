require "rails_helper"

feature "user can search for parks" do
  scenario "user submits a valid state from root page", :vcr do
    visit '/'
    select "Tennessee", from: :state
    click_on "Find Parks"
    expect(current_path).to eq(parks_path)
    
    expect(page).to have_content("Parks Found: 16")
    expect(page).to have_css('.parks', count: 16)
    within(first('.parks')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.description')
      expect(page).to have_css('.directions')
      expect(page).to have_css('.hours')
    end
  end
end


# "https://developer.nps.gov/api/v1/parks?parkCode=acad&api_key=#{ENV[PARK_API_KEY]}"
