const React = require('react');
const hashHistory = require('react-router').hashHistory;
const BookActions = require('../actions/book_actions');
const BookStore = require('../stores/book_store');
const BrowseItem = require('./browse_item');

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
  },

  componentDidMount: function () {
    this.bookListener = BookStore.addListener(this._onChange);
    BookActions.fetchAllBooks();
  },

  componentWillUnmount: function () {
    this.bookListener.remove();
  },

  shuffle: function (array) {
  var m = array.length, t, i;

  // While there remain elements to shuffle…
  while (m) {
    // Pick a remaining element…
    i = Math.floor(Math.random() * m--);
    // And swap it with the current element.
    t = array[m];
    array[m] = array[i];
    array[i] = t;
  }

  return array;
},

  render: function () {
    let self = this;
    let results = Object.keys(this.state.books).map(function (key) {
      let book = self.state.books[key];
      return( <BrowseItem key={book.id} book={book} /> )
    });

    this.shuffle(results);

    return(
      <div className='browse-box'>
        <h1 className='browse-title'>Browse</h1>
        {results}
      </div>
    );
  }
});

module.exports = Browse;
