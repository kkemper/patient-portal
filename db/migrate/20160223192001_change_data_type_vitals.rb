class ChangeDataTypeVitals < ActiveRecord::Migration
  def change
  	 change_table :vitals do |t|
	    t.change   :dateTime, :datetime
	  end
  end
end
