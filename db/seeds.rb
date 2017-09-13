# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# case RAILS_ENV
#   when "development" || "test"
#   6.times do
#     Company.create(
#       :name => Faker::Company.name,
#       :start_week => 7,
#       :end_week => 6,
#       :city => Faker::Address.city,
#       :state => Faker::Address.state,
#       :country_code => Faker::Address.country_code,
#       :time_zone => Faker::Address.time_zone
#     )  
#   end


#   52.times do
#     Sale.create(
#       :company_id => 1,
#       :day1 => Faker::Number.number(6),
#       :day2 => Faker::Number.number(6),
#       :day3 => Faker::Number.number(6),
#       :day4 => Faker::Number.number(6),
#       :day5 => Faker::Number.number(6),
#       :day6 => Faker::Number.number(6),
#       :day7 => Faker::Number.number(6),
#       :year => 2014
#     ) 
#   end
# when "production"
#end
  t_array=[10, 10, 10]
  t_array.each_index do |i|

    case i
    when 0
      1.upto(t_array[0]) do |q|   
        Company.create(
          :name => "Company" + "_#{q}_"+"NY",
          :start_week => 7,
          :end_week => 6,
          :city => "NYC",
          :state => "NY",
          :country_code => "US",
          :time_zone => "EST"
        )
      end
    when 1
      1.upto(t_array[1]) do |q|
        Company.create(
          :name => "Company" + "_#{q}_"+"MA",
          :start_week => 7,
          :end_week => 6,
          :city => "Boston",
          :state => "MA",
          :country_code => "US",
          :time_zone => "EST"
        )
      end
    when 2
      1.upto(t_array[2]) do |q|
        Company.create(
          :name => "Company" + "_#{q}_"+"CA",
          :start_week => 7,
          :end_week => 6,
          :city => "San francisco",
          :state => "CA",
          :country_code => "US",
          :time_zone => "PDT"
        )
      end    
    end
  end  
  companies_ma = Company.where(state: "MA")
  companies_ny = Company.where(state: "NY")
  companies_ca = Company.where(state: "CA")
  companies = [companies_ma, companies_ny, companies_ca]
  companies.each do |i|
    set_date = Date.today - 1460
    case i
    when companies_ma
      companies_ma.each do |c| 
        7*52.times do |t|
          Sale.create(
            :company_id => c.id,
            :sales_on_date => rand(350000..500000) + rand(1234..1799),
            :sales_date => set_date + t,
            # :day2 => rand(350000..500000) + rand(1234..1799),
            # :day3 => rand(350000..500000) + rand(1234..1799),
            # :day4 => rand(350000..500000) - rand(1234..1799),
            # :day5 => rand(350000..500000) + rand(1234..1799),
            # :day6 => rand(350000..500000) + rand(1234..1799),
            # :day7 => rand(350000..500000) + rand(3234..4799),
            :week_number => (set_date+t).strftime('%GU%V%u')[5..6],
            :year => 2013
          )
        end
      end
    when companies_ny
      companies_ny.each do |c| 
        7*52.times do |t|
          Sale.create(
            :company_id => c.id,
            :sales_on_date => rand(350000..500000) + rand(2234..2799),
            :sales_date => set_date + t,
            # :day2 => rand(350000..500000) + rand(2234..2799),
            # :day3 => rand(350000..500000) + rand(3564..3799),
            # :day4 => rand(350000..500000) - rand(2234..3799),
            # :day5 => rand(350000..500000) + rand(2234..2799),
            # :day6 => rand(350000..500000) + rand(2234..2799),
            # :day7 => rand(350000..500000) + rand(5234..7799),
            :week_number => (set_date+t).strftime('%GU%V%u')[5..6],
            :year => 2013
          ) 
        end
      end
    when companies_ca
      companies_ca.each do |c| 
        7*52.times do |t|
          Sale.create(
            :company_id => c.id,
            :sales_on_date => rand(550000..600000) + rand(2234..2799),
            :sales_date => set_date + t,
            # :day2 => rand(550000..600000) + rand(2234..2799),
            # :day3 => rand(550000..600000) + rand(3564..3799),
            # :day4 => rand(550000..600000) - rand(2234..3799),
            # :day5 => rand(550000..600000) + rand(2234..2799),
            # :day6 => rand(550000..600000) + rand(2234..2799),
            # :day7 => rand(550000..600000) + rand(5234..7799),
            :week_number => (set_date+t).strftime('%GU%V%u')[5..6],
            :year => 2013
          )
        end   
      end  
    end  
  end
 

  
      
      