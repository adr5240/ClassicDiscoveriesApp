const React = require('react');
const Link = require('react-router').Link;

const AuthorIndexItem = React.createClass({

    render: function () {
        let author_id = <h1>loading</h1>;
        if (this.props.author !== undefined) {
            author_id = `/authors/${this.props.author.id}`;
        }

        return(
            <div className="author-index-item">
                <img src={this.props.author.image_url} />
                <span className='author-text'>
                    <Link to={ author_id } className='author-name'><b>Name:</b> {this.props.author.full_name}</Link>
                    <li className='author-description'><b>Description:</b> {this.props.author.description}</li>
                </span>
            </div>
        );
    }

});

module.exports = AuthorIndexItem;
