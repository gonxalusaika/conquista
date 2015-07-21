class PaisPartida < ActiveRecord::Base
  belongs_to :pais
  belongs_to :jugador
end
