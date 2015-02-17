json.array!(@skills) do |skill|
  json.extract! skill, :id, :name, :skillkind_id, :description
  json.url skill_url(skill, format: :json)
end
