#st Name, Last Name, Age, Income, Household Size, Gender, Education

voters = {

    "Jon Smith" => {
      "age" => 25,
      "income" => 50000,
      "household size" => 1,
      "gender" => "Male",
      "education" => "College"
    },
    "Jane Davies" => {
      "age" => 30,
      "income" => 60000,
      "household size" => 3,
      "gender" => "Female",
      "education" => "College"
    },
    "Sam Farelly" => {
      "age" => 32,
      "income" => 80000,
      "household size" => 2,
      "gender" => "Unspecified",
      "education" => "College"
    },
    "Joan Favreau" => {
      "age" => 35,
      "income" => 65000,
      "household size" => 4,
      "gender" => "Female",
      "education" => "College"
    },
    "Sam Mcnulty" => {
      "age" => 38,
      "income" => 63000,
      "household size" => 3,
      "gender" => "Male",
      "education" => "college"
    },
    "Mark Minahan" => {
      "age" => 48,
      "income" => 78000,
      "household size" => 5,
      "gender" => "Male",
      "education" => "High School"
    },
    "Susan Umani" => {
      "age" => 45,
      "income" => 75000,
      "household size" => 5,
      "gender" => "Female",
      "education" => "College"
    },
    "Bill Perault" => {
      "age" => 24,
      "income" => 45000 ,
      "household size" => 1,
      "gender" => "Male",
      "education" => "Did Not Complete High School"
    },
    "Doug Stamper" => {
      "age" => 45,
      "income" => 75000,
      "household size" => 1 ,
      "gender" => "Male",
      "education" => "College"
    },
  }
total_age = 0
voters.each do |name, info|
  total_age += voters[name]["age"]
end

average_age = total_age / voters.keys.length
puts "The average voter age is #{average_age}"

total_income = 0
voters.each do |name, info|
  total_income += voters[name]["income"]
end

average_income = total_income / voters.keys.length

puts "The average income is #{average_income}"

total_household_size = 0

voters.each do |name, info|
  total_household_size += voters[name]["household size"]
end

average_household_size = total_household_size / voters.keys.length

puts "The average household size is #{average_household_size}"

total_males = 0
total_females = 0
total_unspecified = 0
voters.each do |name, info|
  if voters[name]["gender"].downcase == "male"
    total_males += 1
  elsif voters[name]["gender"].downcase == "female"
    total_females += 1
  elsif voters[name]["gender"].downcase == "unspecified"
    total_unspecified += 1
  end
end

male_percentage = (total_males * 100) / voters.keys.length
female_percentage = (total_females * 100) / voters.keys.length
unspecified_percentage = (total_unspecified * 100) / voters.keys.length
puts "The percentage of male voters is #{male_percentage}%"
puts "The percentage of female voters is #{female_percentage}%"
puts "The percentage of unspecified gendered voters is #{unspecified_percentage}%"

college_educated = 0
high_school_educated = 0
no_high_school = 0
voters.each do |name, info|
  if voters[name]["education"].downcase == "college"
    college_educated += 1
  elsif voters[name]["education"].downcase == "high school"
    high_school_educated += 1
  elsif voters[name]["education"].downcase == "did not complete high school"
    no_high_school += 1
  end
end

college_percentage = (college_educated.to_f * 100) / voters.keys.length
high_school_percentage = (high_school_educated.to_f * 100) / voters.keys.length
no_high_school_percentage = (no_high_school.to_f * 100) / voters.keys.length
puts "College Educated % : #{college_percentage}"
puts "High School Educated % : #{high_school_percentage}"
puts "Did Not Complete High School % : #{no_high_school_percentage}"


#* Average age
#* Average income
#* Average household size
#* Female Percentage
#* Male Percentage
#* Unspecified Gender Percentage
#* Percent of those who obtained a college education level
#* Percent of those who obtained a high school education level
#* Percent of those that did not finish high school
