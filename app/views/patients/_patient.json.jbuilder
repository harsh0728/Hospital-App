json.extract! patient, :id, :name, :age, :address, :doctor_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
