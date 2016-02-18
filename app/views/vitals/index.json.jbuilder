json.array!(@vitals) do |vital|
  json.extract! vital, :id, :vitalID, :patientID, :vital_type, :dateTime, :vitalDetails, :Units
  json.url vital_url(vital, format: :json)
end
