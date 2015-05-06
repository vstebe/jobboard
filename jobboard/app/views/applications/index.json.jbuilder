json.array!(@applications) do |application|
  json.extract! application, :id, :user_id, :offer_id, :time
  json.url application_url(application, format: :json)
end
