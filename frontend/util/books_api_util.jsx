const BooksApiUtil = {
  fetchAllBooks: function (success) {
    $.ajax({
      url: `api/books`,
      method: 'GET',
      success: function (resp) {
        success(resp);
      }
    });
  },

  getBook: function (id, success) {
    $.ajax({
      url: `api/books/${id}`,
      method: 'GET',
      success: function (resp) {
        success(resp);
      }
    });
  },

  createBook: function (book, success) {
    $.ajax({
      url: `api/books`,
      method: 'POST',
      data: { book: { title: book.title,
                      description: book.description,
                      author_id: book.author_id }},
      success: function (resp) {
        success(resp);
      }
    });
  },

  updateBook: function (book, success) {
    $.ajax({
      url: `api/books/${book.id}`,
      method: 'PATCH',
      data: { book: { title: book.title,
                      description: book.description,
                      author_id: book.author_id }},
      success: function (resp) {
        success(resp);
      }
    });
  },

  deleteBook: function (id, success) {
    $.ajax({
      url: `api/books/${id}`,
      method: 'DELETE',
      success: function (resp) {
        success(resp);
      }
    });
  }

};

module.exports = BooksApiUtil;
