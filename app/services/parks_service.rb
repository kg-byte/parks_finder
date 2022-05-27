class ParksService
  def self.parks_by_state(state)
    get_url("parks?/stateCode=#{state}")
  end

  def self.get_url(url)
    response = Faraday.get("https://developer.nps.gov/api/v1/#{url}") do |faraday|
    	faraday.params['api_key'] = ENV['nps_api_key']
    end
    JSON.parse(response.body, symbolize_names: true) 
  end

end