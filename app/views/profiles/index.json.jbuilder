json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :about_me, :phone, :email
  json.url profile_url(profile, format: :json)
end
