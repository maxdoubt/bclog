json.array!(@schools) do |school|
  json.extract! school, :id, :name, :start_date, :end_date, :description, :degree
  json.url school_url(school, format: :json)
end
