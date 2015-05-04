json.array!(@users) do |user|
  json.extract! user, :id, :user_type, :surname, :first_name, :mail, :promo
  json.url user_url(user, format: :json)
end
