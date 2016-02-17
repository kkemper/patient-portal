json.array!(@patients) do |patient|
  json.extract! patient, :id, :patientID, :demoID, :fName, :lName, :birthDate, :age, :gender, :phone, :email, :allergies, :currentMedication, :clinicalTrials
  json.url patient_url(patient, format: :json)
end
