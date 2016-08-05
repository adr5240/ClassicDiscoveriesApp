const React = require('react');

const AuthorIndexItem = React.createClass({

  render: function () {
    return(
      <div className="author-index-item">
        <img src={this.props.author.image_url} />
        <span className='author-text'>
          <li className='author-name'><b>Name:</b> {this.props.author.full_name}</li>
          <li className='author-description'><b>Description:</b> {this.props.author.description}</li>
        </span>
      </div>
    );
  }

});

module.exports = AuthorIndexItem;
