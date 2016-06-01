class CreateUserDates < ActiveRecord::Migration
  def change
    create_table :user_dates do |t|
      t.integer :user_id
      t.integer :eating_day_id
      t.boolean :eated, default: false
      t.float :fee, default: 0

      t.timestamps null: false
    end
  end
end
