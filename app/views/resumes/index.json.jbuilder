json.array!(@resumes) do |resume|
  json.extract! resume, :id, :name, :title, :cover, :visits
  json.url resume_url(resume, format: :json)
end
