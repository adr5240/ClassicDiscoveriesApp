const Store = require('flux/utils').Store;
const AppDispatcher = require('../dispatcher/dispatcher');
const BookshelfConstants = require('../constants/bookshelf_constants');

const BookshelfStore = new Store(AppDispatcher);

let _bookshelves = {};
let _books = {};

const resetAllBookshelves = function (bookshelves) {
  _bookshelves = {};
  _bookshelves = bookshelves;
};

const addBookshelf = function (bookshelf) {
  _bookshelves[bookshelf.id] = bookshelf;
};

BookshelfStore.all = function () {
  return Object.assign({}, _bookshelves);
};

BookshelfStore.allForUser = function (user_id) {
  let userShelfs = [];
  for (let shelf in _bookshelves) {
    if (_bookshelves[shelf].user_id === user_id) {
      userShelfs.push(_bookshelves[shelf]);
    }
  }

  return userShelfs;
};

BookshelfStore.find = function (id) {
  return Object.assign({}, _bookshelves[id]);
};

BookshelfStore.__onDispatch = function (payload) {
  switch(payload.actionType) {
    case BookshelfConstants.BOOKSHELVES_RECEIVED:
      resetAllBookshelves(payload.bookshelves);
      BookshelfStore.__emitChange();
      break;
    case BookshelfConstants.BOOKSHELF_UPDATE:
      addBookshelf(payload.bookshelf);
      BookshelfStore.__emitChange();
      break;
    case BookshelfConstants.BOOKSHELF_REMOVED:
      resetAllBookshelves(payload.bookshelves);
      BookshelfStore.__emitChange();
      break;
  }
};

module.exports = BookshelfStore;
