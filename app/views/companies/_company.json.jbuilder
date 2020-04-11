json.extract! company, :id, :name, :email, :phone, :contact, :created_at, :updated_at
json.url company_url(company, format: :json)
