const hashHistory = require('react-router').hashHistory;

const BooksApiUtil = {

    addReview: function (review, closeModal, success, error) {
        $.ajax({
            url: `api/books/${review.book_id}/reviews`,
            method: 'POST',
            data: { review: { body: review.body,
                              rating: review.rating,
                              user_id: review.user_id,
                              book_id: review.book_id }},
            success: function (resp) {
                closeModal();
                success(resp);
            },
            error: function (resp) {
                error('books', resp);
            }
        });
    },

    createBook: function (formData, close, success, error) {
        $.ajax({
            url: `api/books`,
            method: 'POST',
            processData: false,
            contentType: false,
            data: formData,
            success: function (resp) {
                close();
                hashHistory.push(`/books/${resp.id}`);
                success(resp);
            },
            error: function (resp) {
                error('books', resp);
            }
        });
    },

    deleteBook: function (id, success, error) {
        $.ajax({
            url: `api/books/${id}`,
            method: 'DELETE',
            success: function (resp) {
                success(resp);
            },
            error: function (resp) {
                error('books', resp);
            }
        });
    },

    fetchAllBooks: function (success, error) {
        $.ajax({
            url: `api/books`,
            method: 'GET',
            success: function (resp) {
                success(resp);
            },
            error: function (resp) {
                error('books', resp);
            }
        });
    },

    getBook: function (id, success, error) {
        $.ajax({
            url: `api/books/${id}`,
            method: 'GET',
            success: function (resp) {
                success(resp);
            },
            error: function (resp) {
                error('books', resp);
            }
        });
    },

    updateBook: function (book, success, error) {
        $.ajax({
            url: `api/books/${book.id}`,
            method: 'PATCH',
            data: { book: { title: book.title,
                            description: book.description,
                            author_id: book.author_id }},
            success: function (resp) {
                success(resp);
            },
            error: function (resp) {
                error('books', resp);
            }
        });
    },
};

module.exports = BooksApiUtil;
