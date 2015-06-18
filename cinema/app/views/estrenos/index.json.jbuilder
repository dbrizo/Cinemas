json.array!(@estrenos) do |estreno|
  json.extract! estreno, :id, :Nombre, :Hora, :Sala, :Oferta
  json.url estreno_url(estreno, format: :json)
end
