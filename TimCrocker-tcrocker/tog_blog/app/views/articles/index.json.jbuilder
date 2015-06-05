json.array!(@articles) do |article|
  json.extract! article, :id, :name, :active, :age
  json.url article_url(article, format: :json)
end
