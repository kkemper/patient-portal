class CreateMedicalFacilities < ActiveRecord::Migration
  def change
    create_table :medical_facilities do |t|
      t.integer :facilityID
      t.integer :demoID
      t.string :specialties
      t.integer :phoneNumber

      t.timestamps null: false
    end
  end
end
