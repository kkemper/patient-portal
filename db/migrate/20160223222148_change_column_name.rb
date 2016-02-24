class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :clinical_visits, :visitID, :id
  	rename_column :coverages, :policyID, :policyid
  	rename_column :demographics, :demoID, :id
  	rename_column :medical_conditions, :medicalID, :id
  	rename_column :medical_facilities, :facilityID, :id
  	rename_column :patients, :patientID, :id
  	rename_column :physicians, :physicianID, :id
  	rename_column :vitals, :vitalID, :id
  end
end
