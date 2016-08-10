const AppDispatcher = require('../dispatcher/dispatcher');
const BooksApiUtil = require('../util/books_api_util');
const BooksConstants = require('../constants/books_constants');
const ErrorActions = require('./error_actions');

const BookActions = {

  fetchAllBooks: function () {
    BooksApiUtil.fetchAllBooks(this.receiveAllBooks, ErrorActions.setErrors);
  },

  getBook: function (id) {
    BooksApiUtil.getBook(id, this.receiveBook, ErrorActions.setErrors);
  },

  createBook: function (book, close) {
    BooksApiUtil.createBook(book, close, this.newBook, ErrorActions.setErrors);
  },

  updateBook: function (book) {
    BooksApiUtil.updateBook(book, this.newBook, ErrorActions.setErrors);
  },

  deleteBook: function (id) {
    BooksApiUtil.deleteBook(id, this.removeBook, ErrorActions.setErrors);
  },

  receiveAllBooks: function (books) {
    AppDispatcher.dispatch({
      actionType: BooksConstants.BOOKS_RECEIVED,
      books: books
    });
  },

  receiveBook: function (book) {
    AppDispatcher.dispatch({
      actionType: BooksConstants.BOOK_RECEIVED,
      book: book
    });
  },

  newBook: function (book) {
    AppDispatcher.dispatch({
      actionType: BooksConstants.BOOK_UPDATE,
        book: book
    });
  },

  removeBook: function (books) {
    AppDispatcher.dispatch({
      actionType: BooksConstants.BOOK_REMOVED,
      books: books
    });
  }

};

module.exports = BookActions;
