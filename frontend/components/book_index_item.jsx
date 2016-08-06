const React = require('react');
const SessionStore = require('../stores/sessions_store');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;


const BookIndexItem = React.createClass({

  _handleBookClick: function (e) {
    e.preventDefault();
    hashHistory.push(`/books/${this.props.book.id}`);
  },

  render: function () {
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
          </span>
        </ul>
      </div>
    );
  }
});

module.exports = BookIndexItem;
