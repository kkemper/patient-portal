class AddTimeStamptz < ActiveRecord::Migration
  def change
  	add_column :clinical_visits, :created_at, :timestamptz
    add_column :clinical_visits, :updated_at, :timestamptz
    add_column :coverages, :created_at, :timestamptz
    add_column :coverages, :updated_at, :timestamptz
    add_column :dashboards, :created_at, :timestamptz
    add_column :dashboards, :updated_at, :timestamptz
    add_column :demographics, :created_at, :timestamptz
    add_column :demographics, :updated_at, :timestamptz
    add_column :insurances, :created_at, :timestamptz
    add_column :insurances, :updated_at, :timestamptz
    add_column :medical_conditions, :created_at, :timestamptz
    add_column :medical_conditions, :updated_at, :timestamptz
    add_column :medical_facilities, :created_at, :timestamptz
    add_column :medical_facilities, :updated_at, :timestamptz
    add_column :medical_histories, :created_at, :timestamptz
    add_column :medical_histories, :updated_at, :timestamptz
    add_column :patients, :created_at, :timestamptz
    add_column :patients, :updated_at, :timestamptz
    add_column :physicians, :created_at, :timestamptz
    add_column :physicians, :updated_at, :timestamptz
    add_column :users, :created_at, :timestamptz
    add_column :users, :updated_at, :timestamptz
    add_column :vitals, :created_at, :timestamptz
    add_column :vitals, :updated_at, :timestamptz
    add_column :vitals, :dateTime, :timestamptz
  end
end
