json.array!(@costs) do |cost|
  json.extract! cost, :id, :tipo, :valor, :data, :travel_id
  json.url cost_url(cost, format: :json)
end
