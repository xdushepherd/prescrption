class RemoveAttrFromPrescri < ActiveRecord::Migration
  def change
    remove_column :prescris, :drug1
    remove_column :prescris, :drug2
    remove_column :prescris, :drug3
    remove_column :prescris, :drug4
    remove_column :prescris, :drug5
    remove_column :prescris, :drug6
  end
end
