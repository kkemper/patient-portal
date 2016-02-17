json.array!(@medical_facilities) do |medical_facility|
  json.extract! medical_facility, :id, :facilityID, :demoID, :specialties, :phoneNumber
  json.url medical_facility_url(medical_facility, format: :json)
end
