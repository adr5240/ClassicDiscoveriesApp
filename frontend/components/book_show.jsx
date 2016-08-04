const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const BookIndexItem = require('./book_index_item');


const BookShow = React.createClass({

  getInitialState: function () {
    let book_id = this.props.params.book_id;
    let book = BookActions.getBook(book_id) || {};
    return ({ book: book, id: book_id })
  },

  _onChange: function () {
    BookActions.getBook(this.props.params.book_id);
    let currentBook = BookStore.currentBook();
    this.setState({ book: currentBook, id: currentBook.id })
  },

  componentDidMount: function () {
    this.bookListener = BookStore.addListener(this._onChange);
    BookActions.getBook(this.state.id);
  },

  componentWillUnmount: function () {
    this.bookListener.remove();
  },

  render: function () {
    return (
      <div className='book-show-page'>
        <BookIndexItem book={this.state.book} />
      </div>
    );
  }

});

module.exports = BookShow;
