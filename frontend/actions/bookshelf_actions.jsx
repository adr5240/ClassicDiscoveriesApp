const AppDispatcher = require('../dispatcher/dispatcher');
const BookshelfApiUtil = require('../util/bookshelf_api_util');
const BookshelfConstants = require('../constants/bookshelf_constants');
const ErrorActions = require('./error_actions');

const BookshelfActions = {

  fetchAllBookshelves: function (user_id) {
    BookshelfApiUtil.fetchAllBookshelves(user_id, this.receiveAllBookshelves, ErrorActions.setErrors);
  },

  createBookshelf: function (bookshelf) {
    BookshelfApiUtil.createBookshelf(bookshelf, this.newBookshelf, ErrorActions.setErrors);
  },

  updateBookshelf: function (bookshelf) {
    BookshelfApiUtil.updateBookshelf(bookshelf, this.newBookshelf, ErrorActions.setErrors);
  },

  deleteBookshelf: function (bookshelf) {
    BookshelfApiUtil.deleteBookshelf(bookshelf, this.removeBookshelf, ErrorActions.setErrors);
  },

  receiveAllBookshelves: function (bookshelves) {
    AppDispatcher.dispatch({
      actionType: BookshelfConstants.BOOKSHELVES_RECEIVED,
      bookshelves: bookshelves
    });
  },

  newBookshelf: function (bookshelf) {
    AppDispatcher.dispatch({
      actionType: BookshelfConstants.BOOKSHELF_UPDATE,
        bookshelf: bookshelf
    });
  },

  removeBookshelf: function (bookshelves) {
    AppDispatcher.dispatch({
      actionType: BookshelfConstants.BOOKSHELF_REMOVED,
      bookshelves: bookshelves
    });
  }

};

module.exports = BookshelfActions;
