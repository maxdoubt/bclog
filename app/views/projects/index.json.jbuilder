json.array!(@projects) do |project|
  json.extract! project, :id, :name, :start_date, :end_date, :description, :degree
  json.url project_url(project, format: :json)
end
