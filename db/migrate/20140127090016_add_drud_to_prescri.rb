class AddDrudToPrescri < ActiveRecord::Migration
  def change
    add_column :prescris, :drug1, :integer
    add_column :prescris, :drug2, :integer
    add_column :prescris, :drug3, :integer
    add_column :prescris, :drug4, :integer
    add_column :prescris, :drug5, :integer
    add_column :prescris, :drug6, :integer
  end
end
