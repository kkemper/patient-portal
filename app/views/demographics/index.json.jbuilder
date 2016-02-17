json.array!(@demographics) do |demographic|
  json.extract! demographic, :id, :demoID, :address, :city, :state, :zipcode, :country, :longitude, :latitude
  json.url demographic_url(demographic, format: :json)
end
