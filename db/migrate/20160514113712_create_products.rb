class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :naam
      t.text :beschrijving
      t.boolean :op_voorraad
      t.integer :totaal_voorraad
      t.integer :prijs
      t.text :afbeelding

      t.timestamps null: false
    end
  end
end
