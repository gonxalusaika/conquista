json.array!(@paises) do |pais|
  json.extract! pais, :id, :nombre
  json.coordenadas pais.coordenadas_array
end
