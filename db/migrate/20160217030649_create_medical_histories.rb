class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.integer :patientID
      t.integer :medicalID
      t.date :timeDiagnosed

      t.timestamps null: false
    end
  end
end
