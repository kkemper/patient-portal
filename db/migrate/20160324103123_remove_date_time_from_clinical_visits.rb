class RemoveDateTimeFromClinicalVisits < ActiveRecord::Migration
  def change
  	remove_column :clinical_visits, :created_at
  	remove_column :clinical_visits, :updated_at
  	remove_column :coverages, :created_at
  	remove_column :coverages, :updated_at
  	remove_column :dashboards, :created_at
  	remove_column :dashboards, :updated_at
  	remove_column :demographics, :created_at
  	remove_column :demographics, :updated_at
  	remove_column :insurances, :created_at
  	remove_column :insurances, :updated_at
  	remove_column :medical_conditions, :created_at
  	remove_column :medical_conditions, :updated_at
  	remove_column :medical_facilities, :created_at
  	remove_column :medical_facilities, :updated_at
  	remove_column :medical_histories, :created_at
  	remove_column :medical_histories, :updated_at
  	remove_column :patients, :created_at
  	remove_column :patients, :updated_at
  	remove_column :physicians, :created_at
  	remove_column :physicians, :updated_at
  	remove_column :users, :created_at
  	remove_column :users, :updated_at
  	remove_column :vitals, :created_at
  	remove_column :vitals, :updated_at
  	remove_column :vitals, :dateTime

  end
end

class ReAddTimestamptoClinicalVisits < ActiveRecord::Migration
	def change
		add_column :clinical_visits, :created_at, :timestamp
		add_column :clinical_visits, :updated_at, :timestamp
		add_column :coverages, :created_at, :timestamp
		add_column :coverages, :updated_at, :timestamp
		add_column :dashboards, :created_at, :timestamp
		add_column :dashboards, :updated_at, :timestamp
		add_column :demographics, :created_at, :timestamp
		add_column :demographics, :updated_at, :timestamp
		add_column :insurances, :created_at, :timestamp
		add_column :insurances, :updated_at, :timestamp
		add_column :medical_conditions, :created_at, :timestamp
		add_column :medical_conditions, :updated_at, :timestamp
		add_column :medical_facilities, :created_at, :timestamp
		add_column :medical_facilities, :updated_at, :timestamp
		add_column :medical_histories, :created_at, :timestamp
		add_column :medical_histories, :updated_at, :timestamp
		add_column :patients, :created_at, :timestamp
		add_column :patients, :updated_at, :timestamp
		add_column :physicians, :created_at, :timestamp
		add_column :physicians, :updated_at, :timestamp
		add_column :users, :created_at, :timestamp
		add_column :users, :updated_at, :timestamp
		add_column :vitals, :created_at, :timestamp
		add_column :vitals, :updated_at, :timestamp
		add_column :vitals, :dateTime, :timestamp
	end
end
		
