class CreateCoverages < ActiveRecord::Migration
  def change
    create_table :coverages do |t|
      t.integer :patientID
      t.integer :policyID
      t.date :expirationDate

      t.timestamps null: false
    end
  end
end
