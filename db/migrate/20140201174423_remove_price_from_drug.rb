class RemovePriceFromDrug < ActiveRecord::Migration
  def change
    remove_column :drugs, :price, :string
    add_column :drugs,:price,:decimal
  end
end
