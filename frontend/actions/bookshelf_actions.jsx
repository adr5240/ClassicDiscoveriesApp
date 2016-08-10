const AppDispatcher = require('../dispatcher/dispatcher');
const BookshelfApiUtil = require('../util/bookshelf_api_util');
const BookshelfConstants = require('../constants/bookshelf_constants');
const ErrorActions = require('./error_actions');

const BookshelfActions = {

  fetchAllBookshelves: function (user_id) {
    BookshelfApiUtil.fetchAllBookshelves(user_id, this.receiveAllBookshelves, ErrorActions.setErrors);
  },

  fetchBookshelf: function (user_id, bookshelf_id) {
    BookshelfApiUtil.fetchBookshelf(user_id, bookshelf_id, this.receiveBookshelf, ErrorActions.setErrors);
  },


  addBookToShelf: function (bookshelf, book_id) {
    BookshelfApiUtil.addBookToShelf(bookshelf, book_id, this.addNewBook, ErrorActions.setErrors);
  },

  removeBookFromShelf: function (bookshelf, book_id) {
    BookshelfApiUtil.removeBookFromShelf(bookshelf, book_id, this.removeBook, ErrorActions.setErrors);
  },

  createBookshelf: function (formData, user_id, close) {
    BookshelfApiUtil.createBookshelf(formData, user_id, close, this.newBookshelf, ErrorActions.setErrors);
  },

  updateBookshelf: function (bookshelf) {
    BookshelfApiUtil.updateBookshelf(bookshelf, this.newBookshelf, ErrorActions.setErrors);
  },

  deleteBookshelf: function (bookshelf) {
    BookshelfApiUtil.deleteBookshelf(bookshelf, this.removeBookshelf, ErrorActions.setErrors);
  },

  addNewBook: function (bookshelf) {
    AppDispatcher.dispatch({
      actionType: BookshelfConstants.BOOK_RECEIVED,
      bookshelf: bookshelf
    });
  },

  removeBook: function (bookshelf) {
    AppDispatcher.dispatch({
      actionType: BookshelfConstants.BOOKSHELVES_RECEIVED,
      bookshelf: bookshelf
    });
  },

  receiveAllBookshelves: function (bookshelves) {
    AppDispatcher.dispatch({
      actionType: BookshelfConstants.BOOKSHELVES_RECEIVED,
      bookshelves: bookshelves
    });
  },

  receiveBookshelf: function (bookshelf) {
    AppDispatcher.dispatch({
      actionType: BookshelfConstants.BOOKSHELF_RECEIVED,
      bookshelf: bookshelf
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
