json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :tagline, :decription, :url, :owner_id
  json.url business_url(business, format: :json)
end
