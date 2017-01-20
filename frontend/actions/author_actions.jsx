const AppDispatcher = require('../dispatcher/dispatcher');
const AuthorApiUtil = require('../util/author_api_util');
const AuthorConstants = require('../constants/author_constants');
const ErrorActions = require('./error_actions');

const AuthorActions = {

    fetchAllAuthors: function () {
        AuthorApiUtil.fetchAllAuthors(this.receiveAllAuthors, ErrorActions.setErrors);
    },

    getAuthor: function (id) {
        AuthorApiUtil.getAuthor(id, this.receiveAuthor, ErrorActions.setErrors);
    },

    receiveAllAuthors: function (authors) {
        AppDispatcher.dispatch({
            actionType: AuthorConstants.AUTHORS_RECEIVED,
            authors: authors
        });
    },

    receiveAuthor: function (author) {
        AppDispatcher.dispatch({
            actionType: AuthorConstants.AUTHOR_RECEIVED,
            author: author
        });
    }

};

module.exports = AuthorActions;
