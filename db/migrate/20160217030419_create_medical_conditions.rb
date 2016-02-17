class CreateMedicalConditions < ActiveRecord::Migration
  def change
    create_table :medical_conditions do |t|
      t.integer :medicalID
      t.string :name
      t.string :symptom
      t.string :description

      t.timestamps null: false
    end
  end
end
