json.array!(@jobs) do |job|
  json.extract! job, :id, :organization_name, :start_date, :end_date, :description, :profile_id
  json.url job_url(job, format: :json)
end
