const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const AuthorStore = require('../stores/author_store');
const AuthorActions = require('../actions/author_actions');
const Link = require('react-router').Link;

String.prototype.contains = function(substring) { return this.indexOf(substring) != -1; };


const Search = React.createClass({

  getInitialState: function () {
    return ({ inputVal: '' });
  },

  componentWillMount: function () {
    this.authors = {};
    this.books = {};
    this.searchItems = [];
    // BookActions.fetchAllBooks();
    AuthorActions.fetchAllAuthors();
    this.authorListener = AuthorStore.addListener(this._onChange);
    this.bookListener = BookStore.addListener(this._onChange);
  },

  componentWillUnmount: function () {
    this.bookListener.remove();
    this.authorListener.remove();
  },

  _onChange: function () {
    this.books = BookStore.all();
    this.authors = AuthorStore.all();
    this.searchArray = this._resetSearchArray();
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

  _handleInput: function (e) {
    this.setState({ inputVal: e.currentTarget.value });
    if(e.currentTarget.value.length > 1) {
      this._selectItem(e.currentTarget.value);
    } else {
      this.searchItems = [];
    }
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

  _clearSearchBox: function () {
    this.searchItems = [];
    this.setState({ inputVal: '' });
  },

  render: function () {
    this.results = [];

    if(this.searchItems.length > 0) {
      this.searchItems.forEach((item) => {
        if (item.title) {
          this.results.push(
            <li key={item.title} onClick={this._clearSearchBox}>
              <Link to={`/books/${item.id}`}
                    className='book-img'><img src={item.book_cover_url}/>
              </Link>
              <span>
                <Link to={`/books/${item.id}`} className='title' >{item.title}</Link>
                <br/>
                <Link to={`/authors/${item.author_id}`} className='book-author'>{item.author}</Link>
              </span>
            </li>
          );
        } else if (item.full_name) {
          this.results.push(
            <li key={item.full_name} onClick={this._clearSearchBox}>
              <Link to={`/authors/${item.id}`}
                    className='author-img'><img src={item.image_url}/>
              </Link>

              <Link to={`/authors/${item.id}`} className='title' >{item.full_name}</Link>
            </li>
          );
        }
      });
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
      </div>
    );
  }

});

module.exports = Search;
