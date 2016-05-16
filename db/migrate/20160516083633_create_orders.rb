class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :subtotaal
      t.integer :btw
      t.integer :verzendkosten
      t.references :user, index: true, foreign_key: true
      t.integer :aantal

      t.timestamps null: false
    end
  end
end
