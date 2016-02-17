json.array!(@physicians) do |physician|
  json.extract! physician, :id, :physicianID, :demoID, :fName, :lname, :specialty
  json.url physician_url(physician, format: :json)
end
