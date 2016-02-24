class FixColumName < ActiveRecord::Migration
  def change
  	change_table :coverages do |t|
	    t.change  :patientID, :string
	    t.change  :policyID, :string
	end
  end
end
