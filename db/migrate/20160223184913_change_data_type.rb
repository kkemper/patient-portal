class ChangeDataType < ActiveRecord::Migration
  def change
	  change_table :coverages do |t|
	    t.change  :patientID, :string
	    t.change  :policyID, :string
	  end

	  change_table :demographics do |t|
	    t.change  :demoID, :string
	  end

	  change_table :insurances do |t|
	    t.change   :policyID, :string
	  end

	  change_table :medical_conditions do |t|
	    t.change  :medicalID, :string
	    t.change  :symptom, :text
	    t.change  :description, :text
	  end

	  change_table :medical_facilities do |t|
	    t.change  :facilityID, :string
	    t.change  :demoID, :string
	    t.change  :specialties, :text
	    t.change  :phoneNumber, :string
	  end

	  change_table :medical_histories do |t|
	    t.change  :patientID, :string
	    t.change  :medicalID, :string
	  end

	  change_table :patients do |t|
	    t.change  :patientID, :text
	    t.change  :demoID, :text
	    t.change  :phone, :string
	    t.change  :allergies, :text
	    t.change  :currentMedication, :text
	    t.change  :clinicalTrials, :text
	  end

	  change_table :physicians do |t|
	    t.change  :physicianID, :string
	    t.change  :demoID, :string
	    t.change  :specialty, :text
	  end

	  change_table :user_names do |t|
	    t.change  :patientID, :string
	  end

	  change_table :vitals do |t|
	    t.change  :vitalID, :string
	    t.change  :patientID, :string
	  end
  end
end
