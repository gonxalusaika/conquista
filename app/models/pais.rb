class Pais < ActiveRecord::Base
	has_and_belongs_to_many :vecinos, class_name: 'Pais', join_table: 'vecinos', association_foreign_key: 'vecino_id'

	def coordenadas_array
		JSON.parse(coordenadas)
		#eval(coordenadas || '[]')
	end
end