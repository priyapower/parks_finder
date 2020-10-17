class Park
  attr_reader :name, :description, :directions, :hours

  def initialize(attributes)
    @name = attributes[:fullName]
    @description = attributes[:description]
    @directions = attributes[:directionsInfo]
    @hours = attributes[:operatingHours][0][:standardHours]
  end
end
