FactoryGirl.define do

  factory :user do
    email "ptolemy@makers.com"
    password_digest "secret"
    employer_id nil
    jobseeker_id nil
  end
end
