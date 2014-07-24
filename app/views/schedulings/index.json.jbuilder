json.array!(@schedulings) do |scheduling|
  json.extract! scheduling, :id, :user_id, :travel_id
  json.url scheduling_url(scheduling, format: :json)
end
