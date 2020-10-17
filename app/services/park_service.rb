class ParkService
  def self.parks_by_state(state)
    response = Faraday.get("https://developer.nps.gov/api/v1/parks?stateCode=#{state}&api_key=#{ENV['PARK_API_KEY']}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
