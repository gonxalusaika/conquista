class Jugador < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :partida

  has_many :territorios, class_name: :PaisPartida, foreign_key: 'partida_id'
end
