const React = require('react');
const hashHistory = require('react-router').hashHistory;

const BrowseItem = React.createClass({

    _handleClick: function (e) {
        e.preventDefault();
        hashHistory.push(`/books/${this.props.book.id}`);
    },

    render: function () {
        return(
            <div className='browse-item'>
                <img onClick={this._handleClick} data-book-id={this.props.book.id} src={this.props.book.book_cover_url}/>
            </div>
        );
    }
});

module.exports = BrowseItem;
