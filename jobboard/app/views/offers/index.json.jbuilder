json.array!(@offers) do |offer|
  json.extract! offer, :id, :company_id, :title, :target, :description, :duration, :creation_date, :start_date, :expiration_date, :contact, :category_id, :active
  json.url offer_url(offer, format: :json)
end
