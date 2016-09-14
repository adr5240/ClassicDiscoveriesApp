const React = require('react');
const AuthorStore = require('../stores/author_store');
const AuthorActions = require('../actions/author_actions');
const AuthorIndexItem = require('./author_index_item');
const BrowseItem = require('./browse_item');

const AuthorShow = React.createClass({

  getInitialState: function () {
    let author_id = this.props.params.author_id;
    let author = AuthorActions.getAuthor(author_id) || {};

    // Create this method
    // BookActions.getAuthoredBooks(author_id);
    return ({ author: author, id: author_id, books: {} });
  },

  _onChange: function () {
    let currentAuthor = AuthorStore.currentAuthor();
    this.setState({ author: currentAuthor, id: currentAuthor.id, books: currentAuthor.books });
  },

  componentDidMount: function () {
    this.authorListener = AuthorStore.addListener(this._onChange);
    AuthorActions.getAuthor(this.state.id);
  },

  componentWillReceiveProps: function (newProps) {
    AuthorActions.getAuthor(newProps.params.author_id);
  },

  componentWillUnmount: function () {
    this.authorListener.remove();
  },

  render: function () {
      let results = <h1>Loading</h1>;
      if (this.state.author.books) {
        results = Object.keys(this.state.author.books).map((key) => {
          let book = this.state.author.books[key];
          return(
            <BrowseItem key={book.id} book={book} />
          );
        });
      }

    return (
      <div className='author-show-page'>
        <AuthorIndexItem className='author-show-item' author={this.state.author} />
        {results}
      </div>
    );
  }

});

module.exports = AuthorShow;
