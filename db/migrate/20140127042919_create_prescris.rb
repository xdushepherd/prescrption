class CreatePrescris < ActiveRecord::Migration
  def change
    create_table :prescris do |t|
      t.string :name
      t.string :patient_name
      t.string :gender
      t.integer :age
      t.string :departments
      t.string :diagnose
      t.string :doctor
      t.string :re_doctor
      t.string :re_re_doctor
      t.string :total_price

      t.timestamps
    end
  end
end
