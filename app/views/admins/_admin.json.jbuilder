json.extract! admin, :id, :name, :phone, :password, :created_at, :updated_at
json.url admin_url(admin, format: :json)
