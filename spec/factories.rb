FactoryBot.define do

    factory :random_boxer, class: Boxer do
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name }
        height {Faker::Number.number(digits: 3)}
        weight {Faker::Number.number(digits: 2)}
        reach {Faker::Number.number(digits: 2)}
        stance {STANCE}
        gym_id {1}
    end

    factory :random_gym, class: Gym do
        name {Faker::Company.name}
        address {Faker::Address.street_address}
    end

    factory :random_user, class: User do
        email {Faker::Internet.email}
        password {Faker::Lorem.characters(number: 10)}
    end

    factory :random_fight, class: Fight do
        
    end

end
