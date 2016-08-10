const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const BookIndexItem = require('./book_index_item');

const BookIndex = React.createClass({

  getInitialState: function () {
    return(
      { books: BookStore.all() }
    );
  },

  _booksChange: function () {
    this.setState({ books: BookStore.all() });
  },

  componentDidMount: function () {
    this.bookListner = BookStore.addListener(this._booksChange);
    BookActions.fetchAllBooks();
  },

  componentWillUnmount: function () {
    this.bookListner.remove();
  },

  render: function () {
    let self = this;
    let results = Object.keys(self.state.books).map(function (key) {
      let book = self.state.books[key];
      return(
        <BookIndexItem key={book.id} book={book} />
      );
    });
    return(
      <div className='book-index'>
        {results}
      </div>
    );
  }


});

module.exports = BookIndex;
