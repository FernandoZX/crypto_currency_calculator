json.extract! user_balance, :id, :amount, :currency, :user_id, :created_at, :updated_at
json.url user_balance_url(user_balance, format: :json)
