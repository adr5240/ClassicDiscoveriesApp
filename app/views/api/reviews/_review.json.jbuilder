json.extract! review, :id, :body, :rating, :user_id, :book_id
json.username User.find(review.user_id).username
