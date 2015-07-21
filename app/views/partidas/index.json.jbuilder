json.array!(@partidas) do |partida|
  json.extract! partida, :id, :nombre
  json.url partida_url(partida, format: :json)
end
