require 'rails_helper'


RSpec.describe Park do 
  it 'exists' do 
  	data = {fullName: 'Nice Park', 
  			description: 'soemthing',
  			directions: 'you know where to go',
  			hours: '9-5'}
    park=Park.new(data)
    expect(park).to be_a Park
    expect(park.name).to eq('Nice Park')
  end


end