FactoryBot.define do
    factory :fact do
        fact { Faker::Lorem.word }
        likes { Faker::Number.number(10) }
        user_id nil
    end
end