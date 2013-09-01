json.array!(@posts) do |post|
  json.extract! post, :body
  json.url post_url(post, format: :json)
end
