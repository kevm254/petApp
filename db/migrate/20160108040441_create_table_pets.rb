class CreateTablePets < ActiveRecord::Migration
  def change
    create_table :table_pets do |f|
      f.string :name
      f.string :type
      f.string :breed
      f.integer :age
      f.integer :weight
      f.date :last_visited_date
    end
  end
end
