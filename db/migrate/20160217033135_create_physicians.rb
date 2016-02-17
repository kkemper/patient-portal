class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.integer :physicianID
      t.integer :demoID
      t.string :fName
      t.string :lname
      t.string :specialty

      t.timestamps null: false
    end
  end
end
