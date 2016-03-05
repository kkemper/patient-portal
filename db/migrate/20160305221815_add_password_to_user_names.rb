class AddPasswordToUserNames < ActiveRecord::Migration
  def change
  	add_column :user_names, :password, :digest
  end
end
