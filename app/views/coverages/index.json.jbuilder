json.array!(@coverages) do |coverage|
  json.extract! coverage, :id, :patientID, :policyID, :expirationDate
  json.url coverage_url(coverage, format: :json)
end
