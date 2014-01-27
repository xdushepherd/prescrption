class AddReferenceToPrescri < ActiveRecord::Migration
  def change
    add_column :prescris, :drug_id, :integer
  end
end
