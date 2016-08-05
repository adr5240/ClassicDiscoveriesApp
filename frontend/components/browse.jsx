const React = require('react');
const hashHistory = require('react-router').hashHistory;
const BookActions = require('../actions/book_actions');
const BookStore = require('../stores/book_store');
const BrowseItem = require('./browse_item');

const Modal = require('react-modal');

const Browse = React.createClass({

  getInitialState: function () {
    return { books: BookStore.all() };
  },

  _handleClick: function (e) {
    e.preventDefault();
    hashHistory.push(`/books/${this.props.book.id}`);
  },

  _onChange: function () {
    this.setState({ books: BookStore.all() });
    this.shuffleBooks();
  },

  componentDidMount: function () {
    this.bookListener = BookStore.addListener(this._onChange);
    BookActions.fetchAllBooks();
  },

  componentWillUnmount: function () {
    this.bookListener.remove();
  },

  shuffleBooks: function () {
    let self = this;
    let bookArray = Object.keys(this.state.books).map(function (key) {
      let book = self.state.books[key];
      return book;
    });

    var m = bookArray.length, t, i;
    // While there remain elements to shuffle…
    while (m) {
      // Pick a remaining element…
      i = Math.floor(Math.random() * m--);
      // And swap it with the current element.
      t = bookArray[m];
      bookArray[m] = bookArray[i];
      bookArray[i] = t;
    }

    this.shuffledBooks = bookArray;
    this.forceUpdate();
    return bookArray;
  },

  render: function () {
    let results = <h1>Loading</h1>;
    if (this.shuffledBooks) {
      results = this.shuffledBooks.map(function (book) {
        return(
          <Modal>
            <BrowseItem key={book.id} book={book} />
          </Modal>
        );
      });
    }

    return(
      <div className='browse-box'>
        <h1 className='browse-title'>Browse</h1>
        {results}
      </div>
    );
  }
});

module.exports = Browse;
