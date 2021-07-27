FactoryBot.define do
    
    factory :gym, class: Gym do
        name {Faker::Company.name}
        address {Faker::Address.street_address}
    end

    factory :boxer, class: Boxer do
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name }
        height {Faker::Number.number(digits: 3)}
        weight {Faker::Number.number(digits: 2)}
        reach {Faker::Number.number(digits: 2)}
        stance {"STANCE"}
        gym
    end    

    factory :user, class: User do
        email {Faker::Internet.email}
        password {Faker::Internet.password}
    end

    factory :fight, class: Fight do
        boxer_a {association :boxer}
        boxer_b {association :boxer}
        time_scheduled {Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)}
        rounds {Faker::Number.number(digits: 1)}
        round_time {Faker::Number.number(digits: 2)}
        winner {association :boxer}
        loser {association :boxer}
        result {"RESULT"}
        gym
    end

end
