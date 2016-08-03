const React = require('react');
const AppDispatcher = require('../dispatcher/dispatcher');
const BooksApiUtil = require('../util/books_api_util');
const BooksConstants = require('../constants/books_constants');
const hashHistory = require('react-router').hashHistory;

const BookActions = {

  fetchAllBooks: function () {
    BooksApiUtil.fetchAllBooks(this.receiveAllBooks);
  },

  getBook: function (id) {
    BooksApiUtil.getBook(id, this.receiveBook);
  },

  createBook: function (book) {
    BooksApiUtil.createBook(book, this.receiveBook);
  },

  updateBook: function (book) {
    BooksApiUtil.updateBook(book, this.receiveBook);
  },

  deleteBook: function (id) {
    BooksApiUtil.deleteBook(id, this.removeBook);
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

  removeBook: function () {
    AppDispatcher.dispatch({
      actionType: BooksConstants.BOOK_REMOVED,
      id: id
    });
  }

};

module.exports = BookActions;
