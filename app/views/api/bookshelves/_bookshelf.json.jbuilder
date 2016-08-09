json.extract! bookshelf, :id, :description, :title, :user_id


json.books do
  json.array! bookshelf.books do |book|
    json.partial! 'api/books/book', book: book
  end
end
