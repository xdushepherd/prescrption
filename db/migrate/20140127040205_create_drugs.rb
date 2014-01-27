class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
