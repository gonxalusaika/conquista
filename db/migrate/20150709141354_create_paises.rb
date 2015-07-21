class CreatePaises < ActiveRecord::Migration
  def change
    create_table :paises do |t|
      t.string :nombre
      t.text :coordenadas

      t.timestamps null: false
    end

    create_table :vecinos do |t|
      t.integer :pais_id
      t.integer :vecino_id

      t.timestamps null: false
    end
  end
end
