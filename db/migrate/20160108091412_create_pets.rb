class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |f|
      f.string :name
      f.string :pet_type
      f.string :breed
      f.integer :age
      f.integer :weight
      f.date :last_visited_date

      f.references :customer, index: true, foreign_key: true
      f.references :doctor, index: true, foreign_key: true
    end
  end
end
