json.extract! transaction_request, :id, :from_service_name, :request_type, :created_at, :user_email, :inc_id, :transaction_id, :amount, :action, :created_at, :updated_at
json.url transaction_request_url(transaction_request, format: :json)
