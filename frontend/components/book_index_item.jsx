const React = require('react');
const SessionStore = require('../stores/sessions_store');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;


const BookIndexItem = React.createClass({

  _handleClick: function (e) {
    e.preventDefault();
    hashHistory.push(`/books/${this.props.book.id}`)
  },

  render: function () {
    return(
      <div className='book-index-item-container'>
        <ul className='book-index-item'>
          <img onClick={this._handleClick} src={this.props.book.book_cover_url}/>
          <li><b>Title:</b> {this.props.book.title}</li>
          <li><b>Description:</b> {this.props.book.description}</li>
          <li><b>Author:</b> {this.props.book.author}</li>
        </ul>
      </div>
    );
  }
});

module.exports = BookIndexItem;
