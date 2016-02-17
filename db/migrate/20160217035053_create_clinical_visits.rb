class CreateClinicalVisits < ActiveRecord::Migration
  def change
    create_table :clinical_visits do |t|
      t.integer :visitID
      t.integer :patientID
      t.integer :physicianID
      t.integer :facilityID
      t.date :date
      t.time :visitTime
      t.integer :visitType
      t.string :diagnosis

      t.timestamps null: false
    end
  end
end
