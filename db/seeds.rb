# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Jobseeker.create(name:"Paul", email:"paul@gmail.com", location:"coolville", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/paulimg.png')
Jobseeker.create(name:"Rob", email:"rob@seekr.com", location:"lovelyville", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/robimg.jpeg')
Jobseeker.create(name:"Jack", email:"jack@seekr.com", location:"lovelyville", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/jackimg.png')
Jobseeker.create(name:"Nikesh", email:"nikesh@seekr.com", location:"lovelyville", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/nikeshimg.jpeg')
Jobseeker.create(name:"Simon", email:"simon@seekr.com", location:"lovelyville", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/simonimg.jpeg')
Jobseeker.create(name:"Ptolemy", email:"ptolemy@seekr.com", location:"lovelyville", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/ptolemyimg.jpeg')
Jobseeker.create(name:"Christian", email:"christian@seekr.com", location:"lovelyville", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/christianimg.jpeg')

Employer.create(name:"Makers", description:"We love testing!", industry:"making developers who test", website:"www.makersacademy.com", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/makersacademylogo.png')
Employer.create(name:"General Assembly", description:"We train seals to hit keyboards", industry:"flooding the market with poor programmers", website:"www.wecantmakeawebsite.clom", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/generalassemblylogo.png')

Job.create(title: 'Dream Maker', description: 'We need a Ptolemy! ', start_date: '14/09/2015', duration: '30 weeks', hours: '45', location: 'London', wage: 8.97)


Offer.create(job_id: 1, jobseeker_id: 1, accepted: true)
