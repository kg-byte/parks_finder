class ParksFacade

  def self.search_by_state(state)
  	parks_data = ParksService.parks_by_state(state)[:data][0..9]
  	parks_data.map do |park_data|
  	  Park.new(park_data)
  	end
  end

end