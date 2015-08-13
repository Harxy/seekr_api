require 'rails_helper'

describe 'get the employers from the endpoint' do
  it 'succesfully' do
    Employer.create(name:"Makers", description:"We love testing!", industry:"making developers who test", website:"www.makersacademy.com")
    get '/api/employers'
    expect(latest_response["name"]).to eq "Makers"
  end
end
