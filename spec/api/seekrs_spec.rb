require 'rails_helper'

describe 'get the employers from the endpoint' do
  it 'successfully' do
    Employer.create(name:"Makers", description:"We love testing!", industry:"making developers who test", website:"www.makersacademy.com")
    get '/api/employers'
    expect(latest_response["name"]).to eq "Makers"
  end
end

describe 'get the employers from the endpoint' do
  it 'successfully' do
    Jobseeker.create(name: "Bob Monkhouse", email: "bob@bob.com", location:"afterlife")
    get '/api/jobseekers'
    expect(latest_response["name"]).to eq "Bob Monkhouse"
  end
end


describe 'get the employers from the endpoint' do
  it 'successfully' do
    Job.create(title: "Dream Makerneer", description: "Ptolemy", start_date:"13/04/2016", duration:"5 weeks", hours: "7", location: "a bit too close", wage: 8.90)
    get '/api/jobs'
    expect(latest_response["title"]).to eq "Dream Makerneer"
  end
end
