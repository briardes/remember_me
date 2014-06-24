json.array!(@people) do |person|
  json.extract! person, :id, :name, :defining_feature, :friend
  json.url person_url(person, format: :json)
end
