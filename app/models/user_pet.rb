class UserPet < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :species
end
