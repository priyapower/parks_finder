class ParkFacade
  def self.parks_by_state(state)
    json = ParkService.parks_by_state(state)
    json[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end
