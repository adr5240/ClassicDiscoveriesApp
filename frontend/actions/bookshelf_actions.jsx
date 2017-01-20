const AppDispatcher = require('../dispatcher/dispatcher');
const BookshelfApiUtil = require('../util/bookshelf_api_util');
const BookshelfConstants = require('../constants/bookshelf_constants');
const ErrorActions = require('./error_actions');

const BookshelfActions = {

    addBookToShelf: function (bookshelf, book_id) {
        BookshelfApiUtil.addBookToShelf(bookshelf, book_id, this.addNewBook, ErrorActions.setErrors);
    },

    addNewBook: function (bookshelf) {
        AppDispatcher.dispatch({
            actionType: BookshelfConstants.BOOKSHELF_UPDATE,
            bookshelf: bookshelf
        });
    },

    createBookshelf: function (formData, user_id, close) {
        BookshelfApiUtil.createBookshelf(formData, user_id, close, this.newBookshelf, ErrorActions.setErrors);
    },

    deleteBookshelf: function (bookshelf) {
        BookshelfApiUtil.deleteBookshelf(bookshelf, this.removeBookshelf, ErrorActions.setErrors);
    },

    fetchAllBookshelves: function (user_id) {
        BookshelfApiUtil.fetchAllBookshelves(user_id, this.receiveAllBookshelves, ErrorActions.setErrors);
    },

    fetchBookshelf: function (user_id, bookshelf_id) {
        BookshelfApiUtil.fetchBookshelf(user_id, bookshelf_id, this.receiveBookshelf, ErrorActions.setErrors);
    },

    newBookshelf: function (bookshelf) {
        AppDispatcher.dispatch({
            actionType: BookshelfConstants.BOOKSHELF_UPDATE,
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

    removeBook: function (bookshelf) {
        AppDispatcher.dispatch({
            actionType: BookshelfConstants.BOOKSHELF_UPDATE,
            bookshelf: bookshelf
        });
    },

    removeBookFromShelf: function (bookshelf, book_id) {
        BookshelfApiUtil.removeBookFromShelf(bookshelf, book_id, this.removeBook, ErrorActions.setErrors);
    },

    removeBookshelf: function (bookshelves) {
        AppDispatcher.dispatch({
            actionType: BookshelfConstants.BOOKSHELF_REMOVED,
            bookshelves: bookshelves
        });
    },

    updateBookshelf: function (bookshelf) {
        BookshelfApiUtil.updateBookshelf(bookshelf, this.newBookshelf, ErrorActions.setErrors);
    }

};

module.exports = BookshelfActions;
