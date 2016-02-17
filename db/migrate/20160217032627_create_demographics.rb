class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.integer :demoID
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
