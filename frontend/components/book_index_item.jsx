const React = require('react');
const SessionStore = require('../stores/sessions_store');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const Link = require('react-router').Link;


const BookIndexItem = React.createClass({


  render: function () {
    return(
      <div className='book-index-item-container'>
        <ul className='book-index-item'>
          <li>Title: {this.props.book.title}</li>
          <li>Description: {this.props.book.description}</li>
          <li>Author: {this.props.book.author}</li>
        </ul>
      </div>
    );
  }
});

module.exports = BookIndexItem;
