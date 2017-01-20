const React = require('react');
const AuthorStore = require('../stores/author_store');
const AuthorActions = require('../actions/author_actions');
const AuthorIndexItem = require('./author_index_item');

const AuthorIndex = React.createClass({

    getInitialState: function () {
        return({ authors: AuthorStore.all() });
    },

    componentDidMount: function () {
        this.authorListner = AuthorStore.addListener(this._authorsChange);
        AuthorActions.fetchAllAuthors();
    },

    componentWillUnmount: function () {
        this.authorListner.remove();
    },

    _authorsChange: function () {
        this.setState({ authors: AuthorStore.all() });
    },

    render: function () {
        let self = this;
        let results = Object.keys(self.state.authors).map(function (key) {
            let author = self.state.authors[key];
            return(
                <AuthorIndexItem key={author.id} author={author} />
            );
        });
        return(
            <div className='author-index'>
                {results}
            </div>
        );
    }

});

module.exports = AuthorIndex;
