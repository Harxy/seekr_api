# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Jobseeker.create(name:"Paul", email:"paul@gmail.com", location:"Hackney", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/paulimg.png', PrimarySkill: 'Writing', SecondarySkill: 'Bartending')
Jobseeker.create(name:"Rob", email:"rob@seekr.com", location:"Putney", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/robimg.jpeg', PrimarySkill: 'Customer Service', SecondarySkill: 'Writing')
Jobseeker.create(name:"Jack", email:"jack@seekr.com", location:"South Kensington", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/jackimg.png', PrimarySkill: 'Babysitting', SecondarySkill: 'Security')
Jobseeker.create(name:"Nikesh", email:"nikesh@seekr.com", location:"Brixton", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/nikeshimg.jpeg', PrimarySkill: 'Moaning', SecondarySkill: 'Dog walking')
Jobseeker.create(name:"Simon", email:"simon@seekr.com", location:"Lambeth", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/simonimg.jpeg', PrimarySkill: 'Security', SecondarySkill: 'Customer Service')
Jobseeker.create(name:"Ptolemy", email:"ptolemy@seekr.com", location:"Stratford", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/ptolemyimg.jpeg', PrimarySkill: 'Developer', SecondarySkill: 'Security')
Jobseeker.create(name:"Christian", email:"christian@seekr.com", location:"Knightsbridge", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/christianimg.jpeg', PrimarySkill: 'Writing', SecondarySkill: 'Espionage')
Jobseeker.create(name:"Ben", email:"Ben@seekr.com", location:"Chelmsford", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/Ben.jpeg ', PrimarySkill: 'Writing', SecondarySkill: 'Espionage')
Jobseeker.create(name:"Jon Darlington", email:"JD@seekr.com", location:"Lake District", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/Darlington.jpeg', PrimarySkill: 'Hired Muscle', SecondarySkill: 'Espionage')
Jobseeker.create(name:"Kirsten", email:"Kirsten@seekr.com", location:"Finchley", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/Kirsten.jpeg', PrimarySkill: 'Maths', SecondarySkill: 'Science')
Jobseeker.create(name:"Lucy", email:"Lucy@seekr.com", location:"Oval", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/Lucy.jpeg', PrimarySkill: 'Writing', SecondarySkill: 'Gardening')
Jobseeker.create(name:"Massi", email:"Massi@seekr.com", location:"Dover", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/Massi.jpeg', PrimarySkill: 'Security', SecondarySkill: 'Cleaning')
Jobseeker.create(name:"Natalie", email:"Natalie@seekr.com", location:"Reading", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/Natalie.jpeg', PrimarySkill: 'Negotiation', SecondarySkill: 'Espionage')
Jobseeker.create(name:"Nicola", email:"Nicola@seekr.com", location:"Wokingham", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/Nicola.jpeg', PrimarySkill: 'Virtuals Machines', SecondarySkill: 'Espionage')
Jobseeker.create(name:"Sanjay", email:"Sanjay@seekr.com", location:"Wokingham", imageURL: 'https://s3-eu-west-1.amazonaws.com/makers-seekr/sanjimg.jpeg', PrimarySkill: 'Virtuals Machines', SecondarySkill: 'Espionage')

Employer.create(name:"Makers", description:"We love testing!", industry:"making developers who test", website:"www.makersacademy.com", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/makersacademylogo.png')
Employer.create(name:"General Assembly", description:"We train seals to hit keyboards", industry:"flooding the market with poor programmers", website:"www.wecantmakeawebsite.clom", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/generalassemblylogo.png')
Employer.create(name:"Coca Cola", description:"We make delicious sugary beverages", industry:"Soft Drinks", website:"www.cocacola.com", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/Coke.jpg')
Employer.create(name:"Culpeper", description:"Like, a bit shit", industry:"Hard Liquor", website:"www.theculpeper.com", imageURL:'https://s3-eu-west-1.amazonaws.com/makers-seekr/culpeper.png')

Job.create(title: 'Dream Maker', description: 'We need a Ptolemy! ', start_date: '14/09/2015', duration: '30 weeks', hours: '45', location: 'London', wage: 10.50, requiredSkills: "Writing", employer_id: 1, contactName: "Sam", contactEmail: "sam@makers.com" )
Job.create(title: 'Dream Breaker', description: 'Someone to show Makers the harsh reality of life', start_date: '14/09/2015', duration: '30 weeks', hours: '45', location: 'London', wage: 7.80, requiredSkills: "Security", employer_id: 1, contactName: "Dave", contactEmail: "dave@makers.com")
Job.create(title: 'Zoo Keeper', description: 'Someone to feed the seals', start_date: '14/09/2015', duration: '30 weeks', hours: '45', location: 'London', wage: 9.60, requiredSkills: "Dog walking", employer_id: 2, contactName: "Steve", contactEmail: "Steve@ga.com")


Offer.create(job_id: 1, jobseeker_id: 1, accepted: true)
