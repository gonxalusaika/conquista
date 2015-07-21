class Partida < ActiveRecord::Base
	has_many :jugadores
	has_many :territorios, class_name: :PaisPartida, foreign_key: 'partida_id'
end
