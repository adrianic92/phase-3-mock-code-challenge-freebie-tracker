puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998, id: 1)
Company.create(name: "Facebook", founding_year: 2004, id: 2)
Company.create(name: "Dunder Mifflin", founding_year: 2002, id: 3)
Company.create(name: "Enron", founding_year: 1995, id: 4)

puts "Creating devs..."
Dev.create(name: "Rick", id: 1)
Dev.create(name: "Morty", id: 2)
Dev.create(name: "Mr. Meseeks", id: 3)
Dev.create(name: "Gazorpazop", id: 4)

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here


100.times do

    Freebie.create(
        item_name: Faker::Food.dish,
        value: "#{rand(1..20)}",
        dev_id: rand(1..4),
        company_id: rand(1..4)
    )

end

puts "Seeding done!"
