const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const AuthorStore = require('../stores/author_store');
const AuthorActions = require('../actions/author_actions');
const hashHistory = require('react-router').hashHistory;

const AddBook = React.createClass({

  getInitialState: function () {
    return({
      title: "",
      description: "",
      authorName: "",
      authorDesc: "",
      imageFile: null,
      imageUrl: null
    });
  },

  updateTitle: function (e) {
    this.setState({ title: e.target.value });
  },

  updateDescription: function (e) {
    this.setState({ description: e.target.value });
  },

  updateAuthorName: function (e) {
    this.setState({ authorName: e.target.value });
  },

  updateAuthorDescription: function (e) {
    this.setState({ authorDesc: e.target.value });
  },

  updateFile: function (e) {
    var file = e.currentTarget.files[0];
    var fileReader = new FileReader();
    fileReader.onloadend = function () {
      this.setState({ imageFile: file, imageUrl: fileReader.result });
    }.bind(this);

    if (file) {
      fileReader.readAsDataURL(file);
    }
  },

  _handleSubmit: function (e) {
    e.preventDefault();

    var formData = new FormData();
    formData.append("book[title]", this.state.title);
    formData.append("book[description]", this.state.description);
    formData.append("book[book_cover]", this.state.imageFile);
    formData.append("author[name]", this.state.authorName);
    formData.append("author[description]", this.state.authorDesc);
    BookActions.createBook(formData, this.props.close);
  },

  success: function () {
    console.log("YAY!");
  },

  render: function () {
    return(
      <form className='add-book-form'>
        Create A Book
        <br/>
        <input type="text" onChange={this.updateTitle} value={this.state.title}/> Book Title *
        <br/>
        <input type="text" onChange={this.updateDescription}/> Book Description *
        <br/>
        <input type="text" onChange={this.updateAuthorName}/> {"Author's Name *"}
        <br/>
        <input type="text" onChange={this.updateAuthorDescription}/> Author Description *
        <br/>
        <input type="file" onChange={this.updateFile}/>
        <br/>
        <img src={this.state.imageUrl}/>
        <br/>
        <button onClick={this._handleSubmit}>Add to our Collection!</button>
        <br/>
        <h4>* indicates required field</h4>
      </form>
    );
  }

});

module.exports = AddBook;
