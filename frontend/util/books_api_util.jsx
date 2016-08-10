const hashHistory = require('react-router').hashHistory;

const BooksApiUtil = {
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
  }

};

module.exports = BooksApiUtil;
