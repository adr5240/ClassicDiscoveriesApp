@authors.each do |author|
    json.set! author.id do
        json.partial! 'author', author: author
    end
end
