class Park
attr_reader :name, :description, :direction, :hours
  def initialize(data)
  	@name = data[:fullName]
  	@description = data[:description]
  	@direction = data[:directionsInfo]
  	@hours = hours_format(data[:operatingHours])
  	
  end


  def hours_format(hours)
  	 hours[0][:standardHours].map {|key, val| key.to_s.capitalize + ': ' + val }
  end
end