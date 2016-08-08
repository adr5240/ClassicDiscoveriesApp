const BookshelfApiUtil = {
  fetchAllBookshelves: function (user_id, success) {
    $.ajax({
      url: `api/users/${user_id}/bookshelves`,
      method: 'GET',
      success: function (resp) {
        success(resp);
      }
    });
  },

  createBookshelf: function (bookshelf, success) {
    $.ajax({
      url: `api/users/${bookshelf.user_id}/bookshelves`,
      method: 'POST',
      data: { bookshelf: { title: bookshelf.title,
                           description: bookshelf.description,
                           user_id: bookshelf.user_id }},
      success: function (resp) {
        success(resp);
      }
    });
  },

  updateBookshelf: function (bookshelf, success) {
    $.ajax({
      url: `api/users/${bookshelf.user_id}/bookshelves/${bookshelf.id}`,
      method: 'PATCH',
      data: { bookshelf: { title: bookshelf.title,
                           description: bookshelf.description,
                           user_id: bookshelf.user_id }},
      success: function (resp) {
        success(resp);
      }
    });
  },

  deleteBookshelf: function (bookshelf, success) {
    $.ajax({
      url: `api/users/${bookshelf.user_id}/bookshelves/${bookshelf.id}`,
      method: 'DELETE',
      success: function (resp) {
        success(resp);
      }
    });
  }

};

module.exports = BookshelfApiUtil;
