namespace :seed do
  task clean_db: :environment do
    # Ensure we are using the Rails environment
    puts "Clearing database"
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    puts "Database has been cleared and recreated"
  end

  desc "create a db with data from the belongs_to article"
  task belongs_to: [:environment, :clean_db] do
    roles = [
      {id: 1, name: 'Developer', billable: true },
      {id: 2, name: 'Manager',   billable: false},
    ]

    locations = [
     { id: 1, name: 'Boston',   billable: 1, region_id: 1 },
     { id: 2, name: 'New York', billable: 1, region_id: 1 },
     { id: 3, name: 'Denver',   billable: 2, region_id: 2 },
    ]

    people = [
      { id: 1, name: 'Wendell',  role_id: 1, location_id: 1, salary: 100},
      { id: 2, name: 'Christie', role_id: 1, location_id: 1, salary: 100},
      { id: 3, name: 'Eve',      role_id: 2, location_id: 1, salary: 100}
    ]

    regions = [
      {id: 1, name: 'East'},
      {id: 2, name: 'West'},
    ]

    Region.create!   regions
    Location.create! locations
    Role.create! roles
    Person.create! people
  end

  desc "create a db with data from the has_many article"
  task has_many: [:environment, :clean_db] do
    roles = [
      {id: 1, name: 'Developer',  billable: true },
      {id: 2, name: 'Manager',    billable: false},
      {id: 3, name: 'Unassigned', billable: false},
    ]

    locations = [
     { id: 1, name: 'Boston',   billable: 1, region_id: 1 },
     { id: 2, name: 'New York', billable: 1, region_id: 1 },
     { id: 3, name: 'Denver',   billable: 2, region_id: 2 },
    ]
    people = [
      { id: 1, name: 'Wendell', location_id: 1, role_id: 1, salary: 100 },
      { id: 2, name: 'Christie',location_id: 1, role_id: 1, salary: 100 },
      { id: 3, name: 'Sandy',   location_id: 3, role_id: 1, salary: 100 },
      { id: 4, name: 'Eve',     location_id: 2, role_id: 2, salary: 100 }
    ]

    regions = [
      {id: 1, name: 'East'},
      {id: 2, name: 'West'},
    ]

    Region.create!   regions
    Role.create!     roles
    Location.create! locations
    Person.create!   people
  end

  desc "create a db with data from the custom joins article"
  task custom_joins: [:environment, :clean_db] do
    roles = [
      {id: 1, name: 'Developer',  billable: true },
      {id: 2, name: 'Manager',    billable: false},
      {id: 3, name: 'Unassigned', billable: false},
    ]

    locations = [
     { id: 1, name: 'Boston',   billable: 1, region_id: 1 },
     { id: 2, name: 'New York', billable: 1, region_id: 1 },
     { id: 3, name: 'Denver',   billable: 2, region_id: 2 },
    ]
    people = [
      { id: 1, name: "Eve",      role_id: 2, location_id: 2, salary: 100, manager_id: nil },
      { id: 2, name: "Bill",     role_id: 2, location_id: 1, salary: 100, manager_id: nil },
      { id: 3, name: "Wendell",  role_id: 1, location_id: 1, salary: 100, manager_id: 1 },
      { id: 4, name: "Christie", role_id: 1, location_id: 1, salary: 100, manager_id: 1 },
      { id: 5, name: "Sandy",    role_id: 1, location_id: 3, salary: 100, manager_id: 2 }
    ]

    regions = [
      {id: 1, name: 'East'},
      {id: 2, name: 'West'},
    ]

    Region.create!   regions
    Role.create!     roles
    Location.create! locations
    Person.create!   people
  end

  desc "create a db with data from the aggregations article"
  task aggregations: [:environment, :clean_db] do
    roles = [
      {id: 1, name: 'Developer',  billable: true },
      {id: 2, name: 'Manager',    billable: false},
      {id: 3, name: 'Unassigned', billable: false},
    ]

    locations = [
     { id: 1, name: 'Boston',   billable: 1, region_id: 1 },
     { id: 2, name: 'New York', billable: 1, region_id: 1 },
     { id: 3, name: 'Denver',   billable: 2, region_id: 2 },
    ]

    people = [
      { id: 1, name: 'Eve',      role_id: 2, location_id: 2, manager_id: nil, salary: 50000 },
      { id: 2, name: 'Bill',     role_id: 2, location_id: 1, manager_id: nil, salary: 40000 },
      { id: 3, name: 'Wendell',  role_id: 1, location_id: 1, manager_id: 1,   salary: 35000 },
      { id: 4, name: 'Christie', role_id: 1, location_id: 1, manager_id: 1,   salary: 30000 },
      { id: 5, name: 'Sandy',    role_id: 1, location_id: 3, manager_id: 2,   salary: 45000 }
    ]

    regions = [
      {id: 1, name: 'East'},
      {id: 2, name: 'West'},
    ]

    Region.create!   regions
    Role.create!     roles
    Location.create! locations
    Person.create!   people
  end
end
