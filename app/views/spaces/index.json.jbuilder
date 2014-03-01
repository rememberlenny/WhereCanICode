json.array!(@spaces) do |space|
  json.extract! space, :title, :description, :published_at, :intro, :extended
  json.url space_url(space, format: :json)
end