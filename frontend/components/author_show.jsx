const React = require('react');
const AuthorStore = require('../stores/author_store');
const AuthorActions = require('../actions/author_actions');
const AuthorIndexItem = require('./author_index_item');

const AuthorShow = React.createClass({

  getInitialState: function () {
    let author_id = this.props.params.author_id;
    let author = AuthorActions.getAuthor(author_id) || {};
    return ({ author: author, id: author_id });
  },

  _onChange: function () {
    let currentAuthor = AuthorStore.currentAuthor();
    this.setState({ author: currentAuthor, id: currentAuthor.id });
  },

  componentDidMount: function () {
    this.authorListener = AuthorStore.addListener(this._onChange);
    AuthorActions.getAuthor(this.state.id);
  },

  componentWillUnmount: function () {
    this.authorListener.remove();
  },

  render: function () {
    return (
      <div className='author-show-page'>
        <AuthorIndexItem className='author-show-item' author={this.state.author} />
      </div>
    );
  }

});

module.exports = AuthorShow;
