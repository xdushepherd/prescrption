class AddTypeToDrug < ActiveRecord::Migration
  def change
    add_column :drugs, :type, :string
  end
end
