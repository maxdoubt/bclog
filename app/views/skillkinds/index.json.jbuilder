json.array!(@skillkinds) do |skillkind|
  json.extract! skillkind, :id, :name
  json.url skillkind_url(skillkind, format: :json)
end
