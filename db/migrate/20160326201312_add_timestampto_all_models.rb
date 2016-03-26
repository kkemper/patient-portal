class AddTimestamptoAllModels < ActiveRecord::Migration
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
