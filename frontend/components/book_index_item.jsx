const React = require('react');
const SessionsStore = require('../stores/sessions_store');
const BookshelfActions = require('../actions/bookshelf_actions');
const BookshelfStore = require('../stores/bookshelf_store');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
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
        this.bookshelves = [];
        if (this.currentUser) {
            BookshelfActions.fetchAllBookshelves(this.currentUser.user.id);
        }
        if (this.props.book.id) {
            BookActions.getBook(this.props.book.id);
        }
    },

    componentWillUnmount: function () {
        this.currentUser = null;
        this.bookshelves = null;
        this.bookshelfListener.remove();
    },

    bookshelfMenu: function () {
        let options = [];

        this.book = BookStore.currentBook();

        let self = this;
        if (this.state.dropDown) {
            options = this.bookshelves.map( (shelf) => {
                if (shelf.book_ids.includes(self.book.id)) {
                    return (
                        <li className='option-items remove-box ${}' onClick={self.removeBook} value={shelf.id} key={shelf.id}>
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

    closeBookshelfMenu: function () {
        this.bookshelf_menu = 'closed';
        this.setState({ dropDown: false });
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
                <ul className='bookshelf-menu signin'>
                    <Link to={'/login'} className={'option-items signin'}>Sign In to add to your bookshelves!</Link>
                </ul>
            );
        }
    },

    _handleBookClick: function (e) {
        e.preventDefault();
        hashHistory.push(`/books/${this.props.book.id}`);
    },

    _handleSelection: function (e) {
        let list_id = e.currentTarget.value;
        let currentShelf = BookshelfStore.find(list_id);
        BookshelfActions.addBookToShelf(currentShelf, this.book.id);

        if (currentShelf.title !== 'All') {
            BookshelfActions.addBookToShelf(this.allShelf, this.book.id);
        }

        this.closeBookshelfMenu();
        BookActions.getBook(this.props.book.id);
    },

    _onChange: function () {
        this.bookshelves = [];
        this.currentUser = SessionsStore.currentUser().user;
        this.bookshelves = BookshelfStore.allForUser(this.currentUser.user.id);
        if (this.currentUser) {
            this.allShelf = BookshelfStore.find(this.currentUser.bookshelves[0].id);
        }
    },

    openBookshelfMenu: function () {
        this.bookshelf_menu = 'opened';
        this.setState({ dropDown: true });
    },

    removeBook: function (e) {
        let bookshelfId = e.target.value;
        let bookshelf = BookshelfStore.find(parseInt(bookshelfId));
        let numOfShelves = [];

        this.bookshelves.forEach( (shelf) => {
            if (shelf.book_ids.includes(this.book.id)) {
                numOfShelves.push(shelf.id);
            }
        });

        if (bookshelf.title === 'All') {
            this.bookshelves.forEach( (shelf) => {
                BookshelfActions.removeBookFromShelf(shelf, this.book.id);
            });
        } else if(numOfShelves.length <= 2) {
            BookshelfActions.removeBookFromShelf(bookshelf, this.book.id);
            BookshelfActions.removeBookFromShelf(this.allShelf, this.book.id);
        } else {
            BookshelfActions.removeBookFromShelf(bookshelf, this.book.id);
        }

        this.bookshelves = this.currentUser.bookshelves.map( (shelf) => {
            return BookshelfStore.find(shelf.id);
        });

        this.closeBookshelfMenu();
        BookActions.getBook(this.props.book.id);
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
