require 'rails_helper'

describe 'get the employers from the endpoint' do
  it 'successfully' do
    Employer.create(name:"Makers", description:"We love testing!", industry:"making developers who test", website:"www.makersacademy.com")
    get '/api/employers'
    expect(latest_response["name"]).to eq "Makers"
  end
end

describe 'get the jobseekers from the endpoint' do
  it 'successfully' do
    Jobseeker.create(name: "Bob Monkhouse", email: "bob@bob.com", location:"afterlife")
    get '/api/jobseekers'
    expect(latest_response["name"]).to eq "Bob Monkhouse"
  end
end


describe 'get the jobs from the endpoint' do
  it 'successfully' do
    Job.create(title: "Dream Makerneer", description: "Ptolemy", start_date:"13/04/2016", duration:"5 weeks", hours: "7", location: "a bit too close", wage: 8.90)
    get '/api/jobs'
    expect(latest_response["title"]).to eq "Dream Makerneer"
  end
end

describe 'get an individual jobseeker from the end point/id' do
  it 'successfully' do
    jobseeker = Jobseeker.create(name: "Bob Monkhouse", email: "bob@bob.com", location:"afterlife")
    string = '/api/jobseekers/' + jobseeker.id.to_s
    get string
    expect(last_response.body).to include "Bob Monkhouse"
  end
end

describe 'can create a new job by posting to an end point' do
  it 'successfully' do
    employer = Employer.create(name:"Makers", description:"We love testing!", industry:"making developers who test", website:"www.makersacademy.com")
    post '/api/jobs', {title: "Dream Makerneer", description: "Ptolemy", start_date:"13/04/2016", duration:"5 weeks", hours: "7", location: "a bit too close", wage: 8.90, employer_id: employer.id }.to_json, "CONTENT_TYPE" => "application/json"
    get '/api/jobs'
    expect(latest_response["title"]).to eq "Dream Makerneer"
  end
end
