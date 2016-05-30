class CreateUserDates < ActiveRecord::Migration
  def change
    create_table :user_dates do |t|
      t.integer :user_id
      t.string :date_integer
      t.boolean :eated
      t.float :fee

      t.timestamps null: false
    end
  end
end
