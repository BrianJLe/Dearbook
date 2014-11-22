class AddStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cohort_id, :integer
    add_column :users, :admin, :boolean
    add_column :users, :approved, :boolean
  end
end
