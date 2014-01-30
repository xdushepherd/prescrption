class AddDrugIdToPrescriDrug < ActiveRecord::Migration
  def change
    add_column :prescri_drugs, :drug_id, :integer
  end
end
