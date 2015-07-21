class CreatePaisPartidas < ActiveRecord::Migration
  def change
    create_table :pais_partidas do |t|
      t.references :pais, index: true, foreign_key: true
      t.references :jugador, index: true, foreign_key: true
      t.integer :ejercitos

      t.timestamps null: false
    end
  end
end
