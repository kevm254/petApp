class AddAreaCodeToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :area_code, :integer

    end

end
