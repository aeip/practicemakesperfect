json.array!(@hobbies) do |hobby|
  json.extract! hobby, :name, :description, :schedule, :created_at
  json.url hobby_url(hobby, format: :json)
end
