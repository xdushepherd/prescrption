class CreatePrescriDrugs < ActiveRecord::Migration
  def change
    create_table :prescri_drugs do |t|
      t.integer :prescri_id
      t.integer :drug_id

      t.timestamps
    end
  end
end
