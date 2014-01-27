class Rename < ActiveRecord::Migration
  def change
  	rename_column :prescri_drugs, :Amount, :amount
  end
end
