class CreatePetAssociations < ActiveRecord::Migration
  def change
    change_table :pets do |t|
      t.references :customer, index: true
    end
    add_foreign_key :pets, :customers
  end
end
