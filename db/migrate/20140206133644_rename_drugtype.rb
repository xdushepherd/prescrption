class RenameDrugtype < ActiveRecord::Migration
  def change
  	rename_column :prescri_drugs, :type, :specifications
  	rename_column :drugs, :type, :specifications
  end
end
