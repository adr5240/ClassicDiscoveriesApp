const Store = require('flux/utils').Store;
const AppDispatcher = require('../dispatcher/dispatcher');
const BooksConstants = require('../constants/books_constants');

const BookStore = new Store(AppDispatcher);

let _book = {};
let _books = {};

const resetAllBooks = function (books) {
  _books = {};
  for (var i = 0; i < books.length; i++) {
    _books[books[i].id] = books[i];
  }
};

const resetBook = function (book) {
  _book = {};
  _book = {book};
};

const removeBook = function (book) {
  delete _books[book.id];
};

BookStore.all = function () {
  return Object.assign({}, _books);
};

BookStore.find = function (id) {
  return Object.assign({}, _books[id]);
};

BookStore.__onDispatch = function (payload) {
  switch(payload.actionType) {
    case BooksConstants.BOOKS_RECEIVED:
      resetAllBooks(payload.books);
      BookStore.__emitChange();
      break;
    case BooksConstants.BOOK_RECEIVED:
      resetBook(payload.book);
      BookStore.__emitChange();
      break;
    case BooksConstants.BOOK_REMOVED:
      removeBook(payload.book);
      BookStore.__emitChange();
      break;
  }
};
