# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if !AdminUser.any?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 
end


cities = City.create([{ name: 'Lisbon' }, 
  { name: 'Berlin'}, { name: 'Madrid' }, { name: 'Barcelona'}, { name: 'Oporto'},
  { name: 'Braga' }, { name: 'Paris'}, { name: 'London' }, { name: 'Budapest' } ]) unless City.any?

tags = ActsAsTaggableOn::Tag.create([ { name: 'node.js' }, { name: 'go' }, { name: 'docker' }, 
  { name: 'ruby' }, { name: 'c#'}, { name: 'python'}, { name: 'javascript'}, { name: 'java'},
  { name: 'php' }, { name: 'c++'}, { name: 'iOS'}, { name: 'Android'}, { name: 'clojure' },
  { name: 'rust'}, { name: 'react' }, { name: 'aws'} ]) unless ActsAsTaggableOn::Tag.any?