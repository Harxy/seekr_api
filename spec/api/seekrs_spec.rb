require 'rails_helper'

describe 'the employers endpoint' do
  it 'can successfully create' do
    post api_employers_path, attributes_for(:employer).to_json, 'CONTENT_TYPE' => 'application/json'
    get api_employers_path
    expect(latest_response['name']).to eq 'Makers'
  end

  it 'can successfully get' do
    create :employer
    get api_employers_path
    expect(latest_response['name']).to eq 'Makers'
  end
end

describe 'the jobseekers endpoint' do

  it 'can successfully create' do
    post api_jobseekers_path, attributes_for(:jobseeker).to_json, 'CONTENT_TYPE' => 'application/json'
    get api_jobseekers_path
    expect(latest_response['name']).to eq 'Bob Monkhouse'
  end

  it 'can successfully get' do
    create :jobseeker
    get api_jobseekers_path
    expect(latest_response['name']).to eq 'Bob Monkhouse'
  end
end

describe 'get the jobs from the endpoint' do
  it 'successfully' do
    create :job
    get api_jobs_path
    expect(latest_response['title']).to eq 'Dream Makerneer'
  end
end

describe 'get an individual jobseeker from the end point/id' do
  it 'successfully' do
    jobseeker = create :jobseeker
    get api_jobseeker_path(jobseeker)
    expect(last_response.body).to include 'Bob Monkhouse'
  end
end

describe 'get an individual job from the end point/id' do
  it 'successfully' do
    job = create :job
    get api_jobs_path(job)
    expect(last_response.body).to include 'Ptolemy'
  end
end

describe 'can create a new job by posting to an end point' do
  it 'successfully' do
    employer = create :employer
    post api_jobs_path, attributes_for(:job).to_json, 'CONTENT_TYPE' => 'application/json'
    get api_jobs_path
    expect(latest_response['title']).to eq 'Dream Makerneer'
  end

  it 'only if a title is entered' do
    employer = create :employer
    post api_jobs_path, attributes_for(:job, title: '').to_json, 'CONTENT_TYPE' => 'application/json'
    get api_jobs_path
    expect(latest_response).to eq nil
  end
end

describe 'can delete a job' do
  it 'successfully' do
    job = create :job
    delete '/api/jobs/' + job.id.to_s
    get api_jobs_path
    expect(latest_response).to eq nil
  end
end

describe 'can assign a user' do
  it 'as an employer' do
    user = create :user
    employer = create :employer
    post '/api/users/set_employer/', {user_id: user.id.to_s, employer_id: employer.id.to_s}.to_json, 'CONTENT_TYPE' => 'application/json'
    expect(latest_response).to include 'update success'
  end

  it 'as a jobseeker' do
    user = create :user
    jobseeker = create :jobseeker
    post '/api/users/set_jobseeker/', {user_id: user.id.to_s, jobseeker_id: jobseeker.id.to_s}.to_json, 'CONTENT_TYPE' => 'application/json'
    expect(latest_response).to include 'update success'
  end
end
