const React = require('react');
const ReactRouter = require('react-router');
const SessionsStore = require('../stores/sessions_store');
const SessionsActions = require('../actions/sessions_actions');
const BookshelfActions = require('../actions/bookshelf_actions');
const Search = require('./search_box');
const hashHistory = ReactRouter.hashHistory;
const Link = ReactRouter.Link;

const Modal = require('react-modal');
const ModalStyle = require('../constants/modal_style');


const App = React.createClass({

  getInitialState: function () {
    return ({ dropDown: false,
              bookshelf: 'list-of-bookshelves',
              explore: 'explore',
              modalOpen: false,
              bookshelf_title: "",
              bookshelf_description: "" });
  },

  _openDropDown: function () {
    this.setState({ dropDown: true, explore: 'exploring' });
  },

  _closeDropDown: function () {
    this.setState({ dropDown: false, explore: 'explore' });
    this._bookshelvesOff();
  },

  _bookshelvesOn: function () {
    this.setState({ bookshelf: 'list-of-bookshelves dropOpen' });
  },

  _bookshelvesOff: function () {
    this.setState({ bookshelf: 'list-of-bookshelves' });
  },

  addBookshelf: function () {

  },

  _openModal: function () {
    this.setState({ modalOpen: true });
  },

  _onModalOpen: function () {
    ModalStyle.content.opacity = 100;
  },

  _onModalClose: function () {
    ModalStyle.content.opacity = 0;
    this.setState({ modalOpen: false });
  },

  _bookshelfCreated: function (e) {
    this._onModalClose();
    hashHistory.push(`/users/${e.user_id}/bookshelves/${e.id}`);
  },

  _handleSubmit: function (e) {
    e.preventDefault();
    let user_id = SessionsStore.currentUser().user.user.id;

    var formData = new FormData();
    formData.append("bookshelf[title]", this.state.bookshelf_title);
    formData.append("bookshelf[description]", this.state.bookshelf_description);
    formData.append("bookshelf[user_id]", user_id);

    BookshelfActions.createBookshelf(formData, user_id, this._bookshelfCreated);
  },

  updateTitle: function (e) {
    this.setState({ bookshelf_title: e.target.value });
  },

  updateDescription: function (e) {
    this.setState({ bookshelf_description: e.target.value });
  },

  _dropDown: function () {
    let self = this;

    if (this.state.dropDown) {
      let user = SessionsStore.currentUser().user;
      let results;
      if (user) {
        results = user.bookshelves.map( function (shelf) {
          return(
            <li className='bookshelves' key={shelf.id}>
              <Link to={`/users/${user.user.id}/bookshelves/${shelf.id}`}>{shelf.title}</Link>
            </li>
          );
        });
        results.push(
          <li onClick={this._openModal} className='bookshelves new-shelf' key={'new-shelf'}>
            Add new bookshelf!
          </li>
        );
      } else {
        results = <li className='bookshelves'>
                    <Link to='/login'>You must be signed in to view bookshelves</Link>
                  </li>;
      }

      return(
        <div>
          <li>
            <Link to='/books'>Books</Link>
          </li>
          <li>
            <Link to='/authors'>Authors</Link>
          </li>
          <li className='bookshelf-selector' onMouseEnter={this._bookshelvesOn} >
            Bookshelves
          </li>
          <ul className={this.state.bookshelf} onMouseLeave={this._bookshelvesOff}>
            {results}
          </ul>
        </div>
      );
    } else {
      return (<div/>);
    }
  },

  login: function (e) {
    e.preventDefault();
    hashHistory.push('/login');
  },

  signup: function (e) {
    e.preventDefault();
    hashHistory.push('/signup');
  },

  greeting: function () {
    if (SessionsStore.isUserLoggedIn()) {
      let currentUser = SessionsStore.currentUser().user;
      return (
        <div className='right-group'>
          <button className='logout-button button' onClick={this.handleLogout}>Logout</button>
          <h1 className='welcome-msg'>Welcome {currentUser.user.username}!</h1>
        </div>
      );
    } else {
      if (this.props.location.pathname !== "/login" && this.props.location.pathname !== "/signup") {
        return(
          <div className='right-group'>
            <button className='sigup-button button' onClick={this.signup} >Signup</button>
            <button className='login-button button' onClick={this.login} >Login</button>
          </div>
        );
      }
    }
  },

  handleLogout: function () {
    let currentUser = SessionsStore.currentUser();
    SessionsActions.logout(currentUser.user.id);
  },

  render () {
    return (
      <div>
        <header className='navBar'>
          <Link to='/' className='title'>BetterReads</Link>

          <ul className='dropDown' onMouseEnter={this._openDropDown}
              onMouseLeave={this._closeDropDown}
              onClick={this._closeDropDown}>

            <h3 className={this.state.explore}>Explore</h3>
            {this._dropDown()}
          </ul>

          <Search />
          {this.greeting()}
        </header>
        {this.props.children}

        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this._onModalClose}
          onAfterOpen={this._onModalOpen}
          style={ ModalStyle }>

          <form className='add-bookshelf-form' onSubmit={this._handleSubmit}>
            Add A New Bookshelf
            <br/>
            <input id='required' type="text" onChange={this.updateTitle} value={this.state.title}/> Book Title *
            <br/>
            <input id='required' type="text" onChange={this.updateDescription}/> Book Description
            <br/>
            <input type="submit" value="Add a Bookshelf!"/>
            <br/>
          </form>
          <button onClick={this._onModalClose}>Close</button>
        </Modal>
      </div>
    );
  }
});

module.exports = App;
