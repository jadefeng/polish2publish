json.array!(@genres) do |genre|
  json.extract! genre, :id, :name, :category_id
  json.url genre_url(genre, format: :json)
end
