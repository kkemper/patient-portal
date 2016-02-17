json.array!(@clinical_visits) do |clinical_visit|
  json.extract! clinical_visit, :id, :visitID, :patientID, :physicianID, :facilityID, :date, :visitTime, :visitType, :diagnosis
  json.url clinical_visit_url(clinical_visit, format: :json)
end
