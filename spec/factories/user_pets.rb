FactoryBot.define do
  factory :user_pet do
    name "MyString"
    species "MyString"
    size "MyString"
    people_friendly false
    child_friendly false
    pet_friendly false
    profile_pic "MyString"
    active false
    bio "MyText"
  end
end
