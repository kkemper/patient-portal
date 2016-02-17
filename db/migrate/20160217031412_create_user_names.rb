class CreateUserNames < ActiveRecord::Migration
  def change
    create_table :user_names do |t|
      t.string :username
      t.integer :patientID

      t.timestamps null: false
    end
  end
end
