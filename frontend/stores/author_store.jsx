const Store = require('flux/utils').Store;
const AppDispatcher = require('../dispatcher/dispatcher');
const AuthorConstants = require('../constants/author_constants');

const AuthorStore = new Store(AppDispatcher);

let _authors = {};
let _author = {};

const resetAllAuthors = function (authors) {
  _authors = {};
  for (let key in authors) {
    _authors[key] = authors[key];
  }
};

const resetAuthor = function (author) {
  _author = {};
  _author = {author};
};

AuthorStore.currentAuthor = function () {
  return _author.author;
};

AuthorStore.all = function () {
  return Object.assign({}, _authors);
};

AuthorStore.find = function (id) {
  return Object.assign({}, _authors[id]);
};

AuthorStore.__onDispatch = function (payload) {
  switch(payload.actionType) {
    case AuthorConstants.AUTHORS_RECEIVED:
      resetAllAuthors(payload.authors);
      AuthorStore.__emitChange();
      break;
    case AuthorConstants.AUTHOR_RECEIVED:
      resetAuthor(payload.author);
      AuthorStore.__emitChange();
      break;
  }
};


module.exports = AuthorStore;
