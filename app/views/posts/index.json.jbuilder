json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :profile_id, :user_id, :published
  json.url post_url(post, format: :json)
end
