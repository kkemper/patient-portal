json.array!(@medical_histories) do |medical_history|
  json.extract! medical_history, :id, :patientID, :medicalID, :timeDiagnosed
  json.url medical_history_url(medical_history, format: :json)
end
