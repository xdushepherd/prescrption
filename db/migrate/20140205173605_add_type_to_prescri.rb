class AddTypeToPrescri < ActiveRecord::Migration
  def change
    add_column :prescri_drugs, :type, :string
  end
end
