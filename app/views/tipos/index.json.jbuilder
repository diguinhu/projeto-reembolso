json.array!(@tipos) do |tipo|
  json.extract! tipo, :id, :description
  json.url tipo_url(tipo, format: :json)
end
