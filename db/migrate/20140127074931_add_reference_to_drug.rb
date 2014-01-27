class AddReferenceToDrug < ActiveRecord::Migration
  def change
    add_column :drugs, :prescri_id, :integer
  end
end
