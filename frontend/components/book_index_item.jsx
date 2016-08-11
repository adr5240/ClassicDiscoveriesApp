const React = require('react');
const SessionsStore = require('../stores/sessions_store');
const BookshelfActions = require('../actions/bookshelf_actions');
const BookshelfStore = require('../stores/bookshelf_store');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;

const BookIndexItem = React.createClass({

  getInitialState: function () {
    this.currentUser = SessionsStore.currentUser().user;
    this.bookshelf_menu = 'closed';
    return ({ dropDown: false });
  },

  componentDidMount: function () {
    this.bookshelfListener = BookshelfStore.addListener(this._onChange);
    if (this.currentUser) {
      BookshelfActions.fetchAllBookshelves(this.currentUser.user.id);
    }
  },

  componentWillUnmount: function () {
    this.bookshelfListener.remove();
  },

  _handleBookClick: function (e) {
    e.preventDefault();
    hashHistory.push(`/books/${this.props.book.id}`);
  },

  _handleSelection: function (e) {
    let list_id = e.currentTarget.value;
    let currentShelf = BookshelfStore.find(list_id);
    BookshelfActions.addBookToShelf(currentShelf, this.props.book.id);

    if (currentShelf.title !== 'All') {
      BookshelfActions.addBookToShelf(this.allShelf, this.props.book.id);
    }

    this.closeBookshelfMenu();
    this.forceUpdate();
  },

  _onChange: function () {
    if (this.currentUser) {
      this.allShelf = this.allShelf || BookshelfStore.find(this.currentUser.bookshelves[0].id);
      this.bookshelves = this.bookshelves || this.currentUser.bookshelves.map( (shelf) => {
        return BookshelfStore.find(shelf.id);
      });
    }

    this.createMenu();
  },

  removeBook: function (e) {
    let bookshelfId = e.target.value;
    let bookshelf = BookshelfStore.find(parseInt(bookshelfId));

    if (this.props.book.bookshelf_ids.length <= 2) {
      BookshelfActions.removeBookFromShelf(this.allShelf, this.props.book.id);
    } else {
      BookshelfActions.removeBookFromShelf(bookshelf, this.props.book.id);
    }

    this.bookshelves = this.currentUser.bookshelves.map( (shelf) => {
      return BookshelfStore.find(shelf.id);
    });

    this.closeBookshelfMenu();
  },

  createMenu: function () {
    this.menu = [];
    if (this.currentUser) {
      this.menu = (
        <ul className={`bookshelf-menu ${this.bookshelf_menu}`} onMouseEnter={this.openBookshelfMenu}
          onMouseLeave={this.closeBookshelfMenu}>
          Add to Shelf  ↓
          {this.bookshelfMenu()}
        </ul>
      );
    } else {
      this.menu = (
        <ul className='bookshelf-menu'>
          <Link to={'/login'} className={'.option-items'}>Sign In to add to your bookshelves!</Link>
        </ul>
      );
    }
  },

  bookshelfMenu: function () {
      let options = [];
      let self = this;
      if(this.state.dropDown) {
        let i = -1;
        options = this.bookshelves.map( (shelf) => {
          if (self.props.book.bookshelf_ids.includes(shelf.id)) {
            return (
              <li className='option-items remove-box' onClick={self.removeBook} value={shelf.id} key={shelf.id}>
                Remove from {shelf.title}
              </li>
            );
          } else {
            return (
              <li className='option-items' onClick={self._handleSelection} value={shelf.id} key={shelf.id}>
                {shelf.title}
              </li>
            );
          }
        });

        return options;
      } else {
        return([]);
      }
  },

  openBookshelfMenu: function () {
    this.bookshelf_menu = 'opened';
    this.setState({ dropDown: true });
  },

  closeBookshelfMenu: function () {
    this.bookshelf_menu = 'closed';
    this.setState({ dropDown: false });
  },

  render: function () {
    this.createMenu();

    let author_id = <h1>loading</h1>;
    if (this.props.book.author !== undefined) {
      author_id = `/authors/${this.props.book.author_id}`;
    }

    return(
      <div className='book-index-item-container'>
        <ul className='book-index-item'>
          <img onClick={this._handleBookClick} src={this.props.book.book_cover_url}/>
          <span className='book-text'>
            <li className='book-title'><b>Title:</b> {this.props.book.title}</li>
            <li className='book-description'><b>Description:</b> {this.props.book.description}</li>
            <Link to={ author_id } className='book-author'><b>Author:</b> {this.props.book.author}</Link>

            {this.menu}
          </span>
        </ul>
      </div>
    );
  }
});

module.exports = BookIndexItem;
