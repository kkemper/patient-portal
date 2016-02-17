json.array!(@medical_conditions) do |medical_condition|
  json.extract! medical_condition, :id, :medicalID, :name, :symptom, :description
  json.url medical_condition_url(medical_condition, format: :json)
end
