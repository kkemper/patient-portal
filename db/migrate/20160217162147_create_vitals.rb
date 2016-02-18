class CreateVitals < ActiveRecord::Migration
  def change
    create_table :vitals do |t|
      t.integer :vitalID
      t.integer :patientID
      t.string :vital_type
      t.time :dateTime
      t.string :vitalDetails
      t.string :Units

      t.timestamps null: false
    end
  end
end
