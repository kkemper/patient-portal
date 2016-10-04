class TieUsersToAttributes < ActiveRecord::Migration
  def change
      add_column :dashboards, :user_id, :string
      add_column :reports, :user_id, :string
      add_column :billings, :user_id, :string
      add_column :vitals, :user_id, :string
  end
end
