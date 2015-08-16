# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Jobseeker.create(name:"Paul", email:"paul@gmail.com", location:"coolville")
Jobseeker.create(name:"Rob", email:"rob@gmail.com", location:"lovelyville")

Employer.create(name:"Makers", description:"We love testing!", industry:"making developers who test", website:"www.makersacademy.com")
Employer.create(name:"General Assembly", description:"We train seals to hit keyboards", industry:"flooding the market with poor programmers", website:"www.wecantmakeawebsite.clom")

Job.create(title: 'Dream Maker', description: 'Ptolmememe', start_date: '14/09/2015', duration: '30 weeks', hours: '45', location: 'London', wage: 8.97)

User.create(email: 'bobby@bob.com', password_digest: '12345')
