require 'rails_helper'

describe 'get the employers from the endpoint' do
  it 'successfully' do
    create :employer
    get api_employers_path
    expect(latest_response['name']).to eq 'Makers'
  end
end

describe 'get the jobseekers from the endpoint' do
  it 'successfully' do
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
