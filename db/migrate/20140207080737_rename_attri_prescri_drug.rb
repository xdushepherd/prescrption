class RenameAttriPrescriDrug < ActiveRecord::Migration
  def change
     rename_column :prescri_drugs,:base_price,:decimal
	 rename_column :prescri_drugs,:total_price,:decimal
  end
end
