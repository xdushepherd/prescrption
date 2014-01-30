class AddAttrsToPrescriDrug < ActiveRecord::Migration
  def change
  	add_column    :prescri_drugs,:drug_name,:string
  	remove_column :prescri_drugs,:drug_id
  end
end
