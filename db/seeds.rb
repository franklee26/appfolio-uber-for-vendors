# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Landowner seeds
# THIS LANDOWNER IS SUPER IMPORTANT! THIS IS THE DEFAULT LANDOWNER SO DO NOT DELETE THIS. MAKE SURE YOU SEED THIS DATA FIRST.
Landowner.create(id: 0, name: "DEFAULT", email: "DEFAULT@DEFAULT.DEFAULT", phone_number: "4156966969")
Landowner.create(name: "Tech Lead", email: "thetechlead@techlead.the", phone_number: "4151234567")

# Tenant seeds
Tenant.create(id: 0, name: "DEFAULT", email: "DEFAULT@DEFAULT.com", landowner: Landowner.first, street_address: "DEFAULT", city: "DEFAULT", state: "DEFAULT", zip: "DEFAULT", phone_number: "4151111111")
t_one = Tenant.create(name: "John Lennon", email: "jlennon@gmail.com", landowner: Landowner.first, street_address: "123 seasame street", city: "Goleta", state: "CA", zip: "12345", phone_number: "4157654321")
t_two = Tenant.create(name: "Benedino Cucumberpatch", email: "bcucumberpatch@gmail.com", landowner: Landowner.first, street_address: "123 seasame street", city: "Goleta", state: "CA", zip: "12345", phone_number: "4153334567")
t_three = Tenant.create(name: "Steve Jobs", email: "sjobs@apple.com", landowner: Landowner.first, street_address: "123 seasame street", city: "Goleta", state: "CA", zip: "12345", phone_number: "4155524567")

# Vendor seeds
Vendor.create(id: 0, name: "DEFAULT", email: "DEFAULT@DEFAULT.DEFAULT", occupation: "DEFAULT", phone_number: "6506966969")
v_one = Vendor.create(id: 10, name: "Bob Electrician", occupation: "Electrician", email: "electrician@gmail.com", zip: "12345", phone_number: "8056966969")
v_two = Vendor.create(id: 11, name: "Bob Plumber", occupation: "Plumber", email: "plumber@gmail.com", zip: "12345", phone_number: "5106966969")
# one = Tenant.create(id: 1, name: "John Lennon", email: "jlennon@gmail.com")
# two = Tenant.create(id: 2, name: "Benedino Cucumberpatch", email: "bcucumberpatch@gmail.com")
# three = Tenant.create(id: 3, name: "Steve Jobs", email: "sjobs@apple.com")
# Job.create(id:1, content:"zoom1", title: 'job1', job_type: 'electrician', status: 'pending')
# Job.create(id:2, content:"zoom2", title: 'job2', job_type: 'electrician', status: 'pending')
# Job.create(id:3, content:"zoom3", title: 'job3', job_type: 'electrician', status: 'pending')
# Job.create(id:4, content:"zoom4", title: 'job4', job_type: 'electrician', status: 'pending')
# Job.create(id:5, content:"zoom5", title: 'job5', job_type: 'electrician', status: 'pending')
# Job.create(id:6, content:"zoom6", title: 'job6', job_type: 'electrician', status: 'pending')
# Job.create(id:7, content:"zoom7", title: 'job7', job_type: 'electrician', status: 'pending')
# Job.create(id:8, content:"zoom8", title: 'job8', job_type: 'electrician', status: 'pending')
# Job.create(id:9, content:"zoom9", title: 'job9', job_type: 'electrician', status: 'pending')
# Job.create(id:10, content:"zoom10", title: 'job10', job_type: 'electrician', status: 'pending')
# Job.create(id:11, content:"zoom11", title: 'job11', job_type: 'electrician', status: 'pending')
# Job.create(id:12, content:"zoom12", title: 'job12', job_type: 'electrician', status: 'pending')
# Job.create(id:13, content:"zoom13", title: 'job13', job_type: 'electrician', status: 'completed')
