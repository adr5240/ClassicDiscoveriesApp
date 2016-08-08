const BookshelfApiUtil = {
  fetchAllBookshelves: function (user_id, success, error) {
    $.ajax({
      url: `api/users/${user_id}/bookshelves`,
      method: 'GET',
      success: function (resp) {
        success(resp);
      },
      error: function (resp) {
        error('bookshelf', resp);
      }
    });
  },

  createBookshelf: function (bookshelf, success, error) {
    $.ajax({
      url: `api/users/${bookshelf.user_id}/bookshelves`,
      method: 'POST',
      data: { bookshelf: { title: bookshelf.title,
                           description: bookshelf.description,
                           user_id: bookshelf.user_id }},
      success: function (resp) {
        success(resp);
      },
      error: function (resp) {
        error('bookshelf', resp);
      }
    });
  },

  updateBookshelf: function (bookshelf, success, error) {
    $.ajax({
      url: `api/users/${bookshelf.user_id}/bookshelves/${bookshelf.id}`,
      method: 'PATCH',
      data: { bookshelf: { title: bookshelf.title,
                           description: bookshelf.description,
                           user_id: bookshelf.user_id }},
      success: function (resp) {
        success(resp);
      },
      error: function (resp) {
        error('bookshelf', resp);
      }
    });
  },

  deleteBookshelf: function (bookshelf, success, error) {
    $.ajax({
      url: `api/users/${bookshelf.user_id}/bookshelves/${bookshelf.id}`,
      method: 'DELETE',
      success: function (resp) {
        success(resp);
      },
      error: function (resp) {
        error('bookshelf', resp);
      }
    });
  }

};

module.exports = BookshelfApiUtil;
