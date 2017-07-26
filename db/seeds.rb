# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



6.times do
  Company.create(
	:name => Faker::Company.name,
    :start_week => 7,
    :end_week => 6,
    :city => Faker::Address.city,
    :state => Faker::Address.state,
    :country_code => Faker::Address.country_code,
    :time_zone => Faker::Address.time_zone
  )  
end


52.times do
  Sale.create(
    :company_id => 1,
  	:day1 => Faker::Number.number(6),
  	:day2 => Faker::Number.number(6),
  	:day3 => Faker::Number.number(6),
  	:day4 => Faker::Number.number(6),
  	:day5 => Faker::Number.number(6),
  	:day6 => Faker::Number.number(6),
  	:day7 => Faker::Number.number(6),
  	:year => 2014
  )	
end	
  
      
      