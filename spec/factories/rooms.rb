FactoryBot.define do
  factory :room do
    name { Faker::Lorem.word }
    place { Faker::Lorem.word }
    floor { Faker::Number.between(1, 4).to_i }
    nseat { Faker::Number.between(1, 99).to_i }
    hopen { Faker::Number.between(0, 23).to_i }
    minopen { Faker::Number.between(0, 59).to_i }
    hclose { Faker::Number.between(0, 23).to_i }
    minclose { Faker::Number.between(0, 59).to_i }
    occupation "g"
  end
end
