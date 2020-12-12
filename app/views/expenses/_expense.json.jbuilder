json.extract! expense, :id, :category_id, :amount, :description, :date, :user_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
