FactoryBot.define do
    factory :user do
        first_name "leah"
        last_name "eramo"
        gender "female"
        username "leahpleurodon"
        dob "13/03/1991"
        active true
        email "boogers@email.com"
        password "pudding"
    end
    factory :mate_profile do
        association :user, factory: :user
        marital_status "single"
        job "Technical Consultant"
        is_smoker false
        faith "jedi"
        personality "quiet, non party animal"
    end
end