FactoryBot.define do
  factory :user2 do
    admin {false}


    trait :admin do
      admin {true}
    end

    trait :female do
      name { "Jane" }
      email { "Jane@bob.com" }
    end

    trait :male do
      name { "Bob" }
      email { "Bob@bob.com" }
    end

  end
end
