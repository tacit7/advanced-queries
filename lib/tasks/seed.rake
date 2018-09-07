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
    Role.create roles

    people = [
      { id: 1, name: 'Wendell',  role_id: 1, salary: 100 },
      { id: 2, name: 'Christie', role_id: 1, salary: 100 },
      { id: 3, name: 'Eve',      role_id: 2, salary: 100 }
    ]

    Person.create people
  end

end
