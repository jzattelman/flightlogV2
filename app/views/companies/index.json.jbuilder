json.array!(@companies) do |company|
  json.extract! company, :id, :name, :country, :state, :expiry_date
  json.url company_url(company, format: :json)
end
