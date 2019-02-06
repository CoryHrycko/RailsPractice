json.extract! user, :id, :account, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
