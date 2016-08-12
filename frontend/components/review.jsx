const React = require('react');

const Review = React.createClass({
  render() {

    let stars = "";
    for (var i = 0; i < this.props.rating; i++) {
      stars += '⭐';
    }

    return (
      <div>
        <ul>
          <li>Rating: {stars}</li>
          <li>{this.props.body}</li>
        </ul>
      </div>
    );
  }
});

module.exports = Review;
