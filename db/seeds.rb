# Create regions
regions = []
(0..5).each { regions << { name: Faker::Address.state }  }
Region.create regions

# Create locations
locations = []
50.times do
  locations << {name: Faker::Address.city, region_id: random(1..5)}
end

Location.create locations



#create people
Person.create name: "Wendell",    role_id: 1
Person.create name: "Christie",   role_id: 1
Person.create name: "Sandy",   role_id: 1
Person.create name: "Eve",        role_id: 2


Role.create  name: 'Developer', billable: true
Role.create  name: 'Manager',   billable: false
Role.create  name: 'Unassigned',   billable: false
