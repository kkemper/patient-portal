class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.integer :policyID
      t.string :providerName
      t.string :coverageDetails
      t.string :providerContact

      t.timestamps null: false
    end
  end
end
