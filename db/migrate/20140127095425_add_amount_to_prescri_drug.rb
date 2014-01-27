class AddAmountToPrescriDrug < ActiveRecord::Migration
  def change
    add_column :prescri_drugs, :Amount, :integer
  end
end
