json.extract! book, :id, :description, :title, :author_id

json.author book.author.full_name
