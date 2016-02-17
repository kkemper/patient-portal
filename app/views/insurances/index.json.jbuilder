json.array!(@insurances) do |insurance|
  json.extract! insurance, :id, :policyID, :providerName, :coverageDetails, :providerContact
  json.url insurance_url(insurance, format: :json)
end
