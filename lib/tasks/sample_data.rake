namespace :db do
  desc "Fill database with sample data"
  
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Ryan Urabe",
                 :email => "rurabe@gmail.com",
                 :password => "omega77",
                 :password_confirmation => "omega77")
    admin.toggle!(:admin)
    
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end