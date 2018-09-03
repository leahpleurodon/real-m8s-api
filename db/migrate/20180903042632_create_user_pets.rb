class CreateUserPets < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pets do |t|
      t.string :name
      t.string :species
      t.string :size
      t.boolean :people_friendly
      t.boolean :child_friendly
      t.boolean :pet_friendly
      t.string :profile_pic
      t.boolean :active
      t.text :bio

      t.timestamps
    end
  end
end
