json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :book_url, :price, :seller_url
  json.url book_url(book, format: :json)
end
