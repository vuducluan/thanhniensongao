class CreateEatingDays < ActiveRecord::Migration
  def change
    create_table :eating_days do |t|
      t.string :date
      t.float :money, default: 0
      t.integer :meal

      t.timestamps null: false
    end
  end
end
