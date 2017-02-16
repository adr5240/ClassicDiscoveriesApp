const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const AuthorStore = require('../stores/author_store');
const AuthorActions = require('../actions/author_actions');
const AddBook = require('./add_book_modal');
const SessionsStore = require('../stores/sessions_store');
const hashHistory = require('react-router').hashHistory;
const Link = require('react-router').Link;
const Modal = require('react-modal');
const ModalStyle = require('../constants/modal_style');

String.prototype.contains = function(substring) { return this.indexOf(substring) != -1; };

const Search = React.createClass({

    getInitialState: function () {
        return ({ inputVal: '', modalOpen: false, modalObject: "" });
    },

    componentWillMount: function () {
        this.authors = {};
        this.books = {};
        this.searchItems = [];
        AuthorActions.fetchAllAuthors();
        this.authorListener = AuthorStore.addListener(this._onChange);
        this.bookListener = BookStore.addListener(this._onChange);
    },

    componentWillUnmount: function () {
        this.bookListener.remove();
        this.authorListener.remove();
    },

    _addBook: function (book) {
        BookActions.createBook(book);
    },

    _clearSearchBox: function () {
        this.searchItems = [];
        this.setState({ inputVal: '' });
    },

    _onChange: function () {
        this.books = BookStore.all();
        this.authors = AuthorStore.all();
        this.searchArray = this._resetSearchArray();
    },

    _handleClick: function (e) {
        let str = e.target.innerHTML;
        let start = str.indexOf('href="#/books/') + 14;
        let newStr = "";
        console.log(str);
        console.log(start);

        for (let i = start; i < 100; i++) {
            if (!isNaN(parseInt(str[i]))) {
                newStr += str[i];
            } else {
                break;
            }
        }
        this._clearSearchBox();
        hashHistory.push(`/books/${newStr}`);
    },

    _handleInput: function (e) {
        this.setState({ inputVal: e.currentTarget.value });
        if(e.currentTarget.value.length > 1) {
            this._selectItem(e.currentTarget.value);
        } else {
            this.searchItems = [];
        }
    },

    _handleModal: function () {
        this._clearSearchBox();
        if(SessionsStore.isUserLoggedIn()) {
            this.setState({ modalOpen: true });
        } else {
            this.forceUpdate();
            hashHistory.push('/login');
            setTimeout(() => alert("You must be logged in to add books!"), 200);
        }
    },

    _onModalClose: function () {
        ModalStyle.content.opacity = 0;
        this.setState({ modalOpen: false });
    },

    _onModalOpen: function () {
        ModalStyle.content.opacity = 100;
    },

    _resetSearchArray: function () {
        let searchArray = [];

        for (let book in this.books) {
            searchArray.push(this.books[book]);
        }

        for (let author in this.authors) {
            searchArray.push(this.authors[author]);
        }
        return searchArray;
    },

    _selectItem: function (input) {
        this.searchItems = this.searchArray.filter((item) => {
            if (item.title) {
                if (item.title.toLowerCase().contains(input.toLowerCase())) {
                    return item;
                }
            } else if (item.full_name) {
                if (item.full_name.toLowerCase().contains(input.toLowerCase())) {
                return item;
                }
            }
        });
    },

    render: function () {
        this.results = [];

        if(this.searchItems.length > 0) {
            this.searchItems.forEach((item) => {
                if (item.title) {
                    this.results.push(
                        <li key={item.title} onClick={this._handleClick}>
                            <Link to={`/books/${item.id}`}
                                  className='book-img'><img src={item.book_cover_url}/>
                            </Link>
                            <div>
                                <Link to={`/books/${item.id}`} className='search-title' >{item.title}</Link>
                                <br/>
                                <Link to={`/authors/${item.author_id}`} className='book-author'>{item.author}</Link>
                            </div>
                        </li>
                    );
                } else if (item.full_name) {
                    this.results.push(
                        <li key={item.full_name} onClick={this._clearSearchBox}>
                            <Link to={`/authors/${item.id}`}
                                  className='author-img'><img src={item.image_url}/>
                            </Link>
                            <div>
                                <Link to={`/authors/${item.id}`} className='search-title' >{item.full_name}</Link>
                            </div>
                        </li>
                    );
                }
            });
        } else if (this.state.inputVal.length > 2) {
            this.results.push(
                <li className='not-found' key='not-found' onClick={ this._handleModal }>
                    Book not found... Click here to add it!
                </li>
            );
        }

        return (
            <div className="search-box">
                <input onChange={this._handleInput}
                       type="text"
                       name="searchBox"
                       value={this.state.inputVal}
                       placeholder='Search...' />
                    <ul className='search-results'>
                        {this.results}
                    </ul>

                    <Modal
                        isOpen={this.state.modalOpen}
                        onRequestClose={this._onModalClose}
                        onAfterOpen={this._onModalOpen}
                        style={ ModalStyle }>

                        <button onClick={this._onModalClose}>Close</button>
                        <br/>
                        <AddBook close={this._onModalClose}/>
                    </Modal>
                </div>
            );
        }

});

module.exports = Search;
