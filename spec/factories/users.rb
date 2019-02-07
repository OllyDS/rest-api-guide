FactoryBot.define do
    factory :user do
        username { Faker::StarWars.character }
        password { Faker::Lorem.word }
    end
end