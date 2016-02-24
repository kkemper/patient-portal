class AddPatientEnteredToVitals < ActiveRecord::Migration
  def change
  	add_column :vitals, :patient_entered, :boolean
  end
end
