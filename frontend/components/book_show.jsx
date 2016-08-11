const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const BookIndexItem = require('./book_index_item');


const BookShow = React.createClass({

  getInitialState: function () {
    let book_id = this.props.params.book_id;
    return ({ book: {}, id: book_id });
  },

  _onChange: function () {
    let currentBook = BookStore.currentBook();
    this.setState({ book: currentBook, id: currentBook.id });
  },

  componentDidMount: function () {
    this.bookListener = BookStore.addListener(this._onChange);
    BookActions.getBook(this.state.id);
  },

  componentWillReceiveProps: function (newProps) {
    BookActions.getBook(newProps.params.book_id);
  },

  componentWillUnmount: function () {
    this.bookListener.remove();
  },

  render: function () {
    return (
      <div className='book-show-page'>
        <BookIndexItem className='book-show-item' book={this.state.book} />
      </div>
    );
  }

});

module.exports = BookShow;
