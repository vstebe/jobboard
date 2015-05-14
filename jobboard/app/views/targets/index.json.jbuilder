json.array!(@targets) do |target|
  json.extract! target, :id, :label
  json.url target_url(target, format: :json)
end
