const Store = require('flux/utils').Store;
const AppDispatcher = require('../dispatcher/dispatcher');
const BooksConstants = require('../constants/books_constants');
const BookshelfConstants = require('../constants/bookshelf_constants');
const PageConstants = require('../constants/page_constants');


const BookStore = new Store(AppDispatcher);

let _book = {};
let _books = {};
let _shuffledBooks = {};

let _page = {}, // Default Book listing
    total  = 0,  // Default number of Available Books
    start  = 0,  // Default start
    end    = 9,  // Default end
    amt    = 29;  // Number of Books to list per page (0-based)


const addBook = function (book) {
    _book = {};
    _book = {book};
    _books[book.id] = book;
};

const clearShuffledBooks = function () {
    _shuffledBooks = {};
};

const resetAllBooks = function (books) {
    _books = {};
    for (let key in books) {
        _books[key] = books[key];
    }
    if (Object.keys(_shuffledBooks).length <= 0 ) {
        shuffleBooks();
    }
};

const resetBook = function (book) {
    _book = {};
    _book = {book};
};

const shuffleBooks = function () {
    _shuffledBooks = Object.keys(_books).map(function (key) {
        let book = _books[key];
        return book;
    });

    let m = _shuffledBooks.length, t, i;
    // While there remain elements to shuffle…
    while (m) {
      // Pick a remaining element…
        i = Math.floor(Math.random() * m--);
      // And swap it with the current element.
        t = _shuffledBooks[m];
        _shuffledBooks[m] = _shuffledBooks[i];
        _shuffledBooks[i] = t;
    }
};

BookStore.all = function () {
    return Object.assign({}, _books);
};

BookStore.currentBook = function () {
    return _book.book;
};

BookStore.find = function (id) {
    return Object.assign({}, _books[id]);
};

BookStore.shuffled = function () {
    return Object.assign({}, _shuffledBooks);
};

BookStore.currentPage = function () {
    return Object.assign({}, _page);
};

BookStore.__onDispatch = function (payload) {
    switch(payload.actionType) {
        case BooksConstants.BOOKS_RECEIVED:
            resetAllBooks(payload.books);
            BookStore.__emitChange();
            break;
        case BooksConstants.BOOK_UPDATE:
            addBook(payload.book);
            break;
        case BooksConstants.BOOK_RECEIVED:
            resetBook(payload.book);
            BookStore.__emitChange();
            break;
        case BooksConstants.BOOK_REMOVED:
            resetAllBooks(payload.books);
            BookStore.__emitChange();
            break;
        case BooksConstants.REVIEW_ADDED:
            resetBook(payload.book);
            BookStore.__emitChange();
            break;
        case PageConstants.TURN_PAGE:
            processTurnPage(payload.data); //NOTE fix payload
            // Omitted:
            // Call the API to get new event data based on our new Page params
            BookStore.__emitChange();
            break;
    }
};

module.exports = BookStore;
