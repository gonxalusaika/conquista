class CreateJugadores < ActiveRecord::Migration
  def change
    create_table :jugadores do |t|
      t.references :usuario, index: true, foreign_key: true
      t.references :partida, index: true, foreign_key: true
      t.string :color
      t.integer :turno

      t.timestamps null: false
    end
  end
end
