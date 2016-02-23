class ChangeDataTypeForClinicalVisits < ActiveRecord::Migration
  def change
  	change_table :clinical_visits do |t|
  		t.change :visitID, :string
  		t.change :patientID, :string
  		t.change :physicianID, :string
  		t.change :facilityID, :string
  		t.change :visitType, :string
  		t.change :diagnosis, :text
  	end
  end
end
