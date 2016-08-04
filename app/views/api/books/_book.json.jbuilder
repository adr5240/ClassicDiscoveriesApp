json.extract! book, :id, :description, :title, :author_id

json.author book.author.full_name
json.book_cover_url asset_path(book.book_cover.url)
