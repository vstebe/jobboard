json.array!(@companies) do |company|
  json.extract! company, :id, :name, :mail, :num, :address, :description
  json.url company_url(company, format: :json)
end
