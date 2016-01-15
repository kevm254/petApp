class RevisePhoneNumberOnCustomer < ActiveRecord::Migration
  def change
    remove_columns :customers, :area_code, :phone_number_a, :phone_number_b
    add_column :customers, :phone_number, :string
  end
end
