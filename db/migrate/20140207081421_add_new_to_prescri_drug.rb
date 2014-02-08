class AddNewToPrescriDrug < ActiveRecord::Migration
  def change
    add_column :prescri_drugs, :base_price, :decimal
    add_column :prescri_drugs, :total_price, :decimal
	remove_column :prescri_drugs,:decimal
  end
end
