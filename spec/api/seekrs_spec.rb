require 'rails_helper'

describe 'get the employers from the endpoint' do
  it 'successfully' do
    create :employer
    get '/api/employers'
    expect(latest_response["name"]).to eq "Makers"
  end
end

describe 'get the jobseekers from the endpoint' do
  it 'successfully' do
    create :jobseeker
    get '/api/jobseekers'
    expect(latest_response["name"]).to eq "Bob Monkhouse"
  end
end


describe 'get the jobs from the endpoint' do
  it 'successfully' do
    create :job
    get '/api/jobs'
    expect(latest_response["title"]).to eq "Dream Makerneer"
  end
end

describe 'get an individual jobseeker from the end point/id' do
  it 'successfully' do
    jobseeker = create :jobseeker
    string = '/api/jobseekers/' + jobseeker.id.to_s
    get string
    expect(last_response.body).to include "Bob Monkhouse"
  end
end

describe 'get an individual job from the end point/id' do
  it 'successfully' do
    job = create :job
    string = '/api/jobs/' + job.id.to_s
    get string
    expect(last_response.body).to include "Ptolemy"
  end
end

describe 'can create a new job by posting to an end point' do
  it 'successfully' do
    employer = create :employer
    post '/api/jobs', {title: "Dream Makerneer", description: "Ptolemy", start_date:"13/04/2016", duration:"5 weeks", hours: "7", location: "a bit too close", wage: 8.90, employer_id: employer.id }.to_json, "CONTENT_TYPE" => "application/json"
    get '/api/jobs'
    expect(latest_response["title"]).to eq "Dream Makerneer"
  end

describe 'can delete a job' do
  it 'successfully' do
    job = create :job
    string = '/api/jobs/' + job.id.to_s
    delete string
    get '/api/jobs'
    expect(latest_response).to eq nil
    end
  end
end
