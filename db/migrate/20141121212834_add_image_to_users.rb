class AddImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :quote, :string
  end
end
