class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :patientID
      t.integer :demoID
      t.string :fName
      t.string :lName
      t.date :birthDate
      t.integer :age
      t.string :gender
      t.integer :phone
      t.string :email
      t.string :allergies
      t.string :currentMedication
      t.integer :clinicalTrials

      t.timestamps null: false
    end
  end
end
