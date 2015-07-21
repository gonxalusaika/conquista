class CreatePartidas < ActiveRecord::Migration
  def change
    create_table :partidas do |t|
      t.string :nombre
      t.integer :proximo_turno

      t.timestamps null: false
    end
  end
end
