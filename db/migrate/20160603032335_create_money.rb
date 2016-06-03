class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.integer :user_id
      t.integer :money_type
      t.float :fee
      t.text :note

      t.timestamps null: false
    end
  end
end
