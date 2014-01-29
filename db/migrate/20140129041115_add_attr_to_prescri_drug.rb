class AddAttrToPrescriDrug < ActiveRecord::Migration
  def change
  	add_column :prescri_drugs,:base_price,:integer
  	add_column :prescri_drugs,:use_method,:string
  	add_column :prescri_drugs,:total_price,:integer
  end
end
