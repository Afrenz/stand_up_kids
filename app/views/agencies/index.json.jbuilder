json.array!(@agencies) do |agency|
  json.extract! agency, :id, :name, :email, :city, :state
  json.url agency_url(agency, format: :json)
end
