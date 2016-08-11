const React = require('react');
const SessionsStore = require('../stores/sessions_store');
const BrowseItem = require('./browse_item');
const BookshelfActions = require('../actions/bookshelf_actions');
const BookshelfStore = require('../stores/bookshelf_store');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');


const BookshelfIndex = React.createClass({

  getInitialState: function () {
    return ({ currentUser: SessionsStore.currentUser().user, bookshelf: {} });
  },

  componentDidMount: function () {
    let currentUser = SessionsStore.currentUser().user;
    let bookshelf;
    if (currentUser) {
      currentUser.bookshelves.forEach( (shelf) => {
        if(shelf.id === parseInt(this.props.params.bookshelves_id)) {
          bookshelf = shelf;
        }
      });
      BookshelfActions.fetchAllBookshelves(currentUser.user.id);
    }



    this.bookshelfListener = BookshelfStore.addListener(this._bookshelfChange);
    this.userListener = SessionsStore.addListener(this._userChange);
  },

  componentWillUnmount: function () {
    this.bookshelfListener.remove();
    this.userListener.remove();
  },

  componentWillReceiveProps: function () {
    let currentUser = SessionsStore.currentUser().user;
    let bookshelf;
    currentUser.bookshelves.forEach( (shelf) => {
      if(shelf.id === parseInt(this.props.params.bookshelves_id)) {
        bookshelf = shelf;
      }
    });

    BookshelfActions.fetchAllBookshelves(currentUser.user.id);
    this.setState({ bookshelf: bookshelf });
  },

  _bookshelfChange: function () {
    let bookshelf = BookshelfStore.find(this.props.params.bookshelves_id);
    this.setState({ bookshelf: bookshelf });
  },

  render: function () {
    let books = <h1>Loading</h1>;
    if(this.state.bookshelf.book_ids) {
      books = this.state.bookshelf.book_ids.map((book_id) => {
        let book = BookStore.find(book_id);
        return <BrowseItem key={book_id} book={book} />;
      });
    }

    if (books.length === 0) {
      books = <h1 className='empty-bookshelf' key='empty'>{"There doesn't seem to be anything here..."}</h1>;
    }

    return (
      <div className='bookshelf-index'>
        <h1 className='bookshelf-title'>{this.state.bookshelf.title}</h1>
        <h3 className='bookshelf-description'>{this.state.bookshelf.description}</h3>
        <div className='booklist'>
          {books}
        </div>
      </div>
    );
  }

});

module.exports = BookshelfIndex;
