class AddInfoToPrescri < ActiveRecord::Migration
  def change
    add_column :prescris, :info, :string
  end
end
