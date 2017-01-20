const React = require('react');

const Review = React.createClass({
    render() {

        let stars = "";
        for (var i = 0; i < this.props.rating; i++) {
            stars += '⭐';
        }

        return (
            <div>
                <ul className='individual-review'>
                    <li>{this.props.username} gave it : {stars}</li>
                    <li>{this.props.body}</li>
                </ul>
            </div>
        );
    }
});

module.exports = Review;
