json.array!(@user_names) do |user_name|
  json.extract! user_name, :id, :username, :patientID
  json.url user_name_url(user_name, format: :json)
end
