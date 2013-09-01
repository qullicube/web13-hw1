json.array!(@profiles) do |profile|
  json.extract! profile, :education, :hobbies, :birthday, :relationship
  json.url profile_url(profile, format: :json)
end
