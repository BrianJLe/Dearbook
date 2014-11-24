class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :invite_code
      t.string :description
      t.integer :cohort_id

      t.timestamps
    end
  end
end
