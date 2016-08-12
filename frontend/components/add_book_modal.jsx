const React = require('react');
const BookActions = require('../actions/book_actions');
const SessionsStore = require('../stores/sessions_store');

const AddBook = React.createClass({

  getInitialState: function () {
    return({
      title: "",
      description: "",
      authorFname: "",
      authorLname: "",
      authorDesc: "",
      imageFile: null,
      imageUrl: null
    });
  },

  componentDidMount: function () {
    this.sessionListener = SessionsStore.addListener(this._signOut);
  },

  componentWillUnmount: function () {
    this.sessionListener.remove();
  },

  _signOut: function () {
    this.props.close();
  },

  updateTitle: function (e) {
    this.setState({ title: e.target.value });
  },

  updateDescription: function (e) {
    this.setState({ description: e.target.value });
  },

  updateAuthorFname: function (e) {
    this.setState({ authorFname: e.target.value });
  },

  updateAuthorLname: function (e) {
    this.setState({ authorLname: e.target.value });
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
    formData.append("author[fname]", this.state.authorFname);
    formData.append("author[lname]", this.state.authorLname);
    formData.append("author[description]", this.state.authorDesc);
    BookActions.createBook(formData, this.props.close);
  },

  render: function () {

    (function() {
    $('form > input').keyup(function() {

        var empty = false;
        $('form > #required').each(function() {
            if ($(this).val() === '') {
                empty = true;
            }
        });

        if (empty) {
            $('#register').attr('disabled', 'disabled');
        } else {
            $('#register').removeAttr('disabled');
        }
    });
  })();

    return(
      <form className='add-book-form' onSubmit={this._handleSubmit}>
        Create A Book
        <br/>
        <input id='required' type="text" onChange={this.updateTitle} value={this.state.title}/> Book Title *
        <br/>
        <input id='required' type="text" onChange={this.updateDescription}/> Book Description *
        <br/>
        <input id='required' type="text" onChange={this.updateAuthorFname}/> {"Author's First Name *"}
        <br/>
        <input id='required' type="text" onChange={this.updateAuthorLname}/> {"Author's Last Name *"}
        <br/>
        <input id='required' type="text" onChange={this.updateAuthorDescription}/> Author Description *
        <br/>
        <input type="file" onChange={this.updateFile}/>
        <br/>
        <img src={this.state.imageUrl}/>
        <br/>
        <input type="submit" id="register" value="Add to Our Collection!" disabled="disabled"/>

        <br/>
        <h4>* indicates required field</h4>
      </form>
    );
  }

});

module.exports = AddBook;
