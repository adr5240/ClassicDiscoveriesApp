const React = require('react');
const SessionsStore = require('../stores/sessions_store');
const BookshelfActions = require('../actions/bookshelf_actions');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;

const BookIndexItem = React.createClass({

  getInitialState: function () {
    this.currentUser = SessionsStore.currentUser().user;
    return ({ dropDown: false });
  },

  _handleBookClick: function (e) {
    e.preventDefault();
    hashHistory.push(`/books/${this.props.book.id}`);
  },

  _handleSelection: function (e) {
    let list_id = e.currentTarget.value;
    let currentShelf = this.currentUser.bookshelves[list_id];

    BookshelfActions.addBookToShelf(currentShelf, this.props.book.id);

    if (currentShelf.title !== 'All') {
      let allShelf = this.currentUser.bookshelves.filter( (shelf) => { if (shelf.title === 'All') return true; });
      BookshelfActions.addBookToShelf(allShelf[0], this.props.book.id);
    }

    this.closeBookshelfMenu();
  },

  bookshelfMenu: function () {
      let bookshelves = this.currentUser.bookshelves;
      let options = [];

      if(this.state.dropDown) {
        let i = -1;
        options = bookshelves.map( (shelf) => {
          i++;
          return (
            <li className='option-items' onClick={this._handleSelection} value={i} key={shelf.id}>
              {shelf.title}
            </li>
          );
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
    let author_id = <h1>loading</h1>;
    if (this.props.book.author !== undefined) {
      author_id = `/authors/${this.props.book.author_id}`;
    }

    let menu = [];
    if (this.currentUser) {
      menu = (<ul className={`bookshelf-menu ${this.bookshelf_menu}`} onMouseEnter={this.openBookshelfMenu}
          onMouseLeave={this.closeBookshelfMenu}>
        Add to Shelf  ↓
        {this.bookshelfMenu()}
      </ul>);
    } else {
      menu = (
        <ul className='bookshelf-menu'>
          <Link to={'/login'} className={'.option-items'}>Sign In to add to your bookshelves!</Link>
        </ul>
      );
    }

    return(
      <div className='book-index-item-container'>
        <ul className='book-index-item'>
          <img onClick={this._handleBookClick} src={this.props.book.book_cover_url}/>
          <span className='book-text'>
            <li className='book-title'><b>Title:</b> {this.props.book.title}</li>
            <li className='book-description'><b>Description:</b> {this.props.book.description}</li>
            <Link to={ author_id } className='book-author'><b>Author:</b> {this.props.book.author}</Link>

            {menu}
          </span>
        </ul>
      </div>
    );
  }
});

module.exports = BookIndexItem;
