json.array!(@prescris) do |prescri|
  json.extract! prescri, :id, :name, :patient_name, :gender, :age, :departments, :diagnose, :doctor, :re_doctor, :re_re_doctor, :total_price
  json.url prescri_url(prescri, format: :json)
end
