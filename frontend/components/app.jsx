const React = require('react');
const ReactRouter = require('react-router');
const SessionsStore = require('../stores/sessions_store');
const SessionsActions = require('../actions/sessions_actions');
const Search = require('./search_box');
const hashHistory = ReactRouter.hashHistory;
const Link = ReactRouter.Link;


const App = React.createClass({

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
      let currentUser = SessionsStore.currentUser();
      return (
        <hgroup>
          <button className='logout-button button' onClick={this.handleLogout}>Logout</button>
          <h1 className='welcome-msg'>Welcome {currentUser.user.username}!</h1>
        </hgroup>
      );
    } else {
      if (this.props.location.pathname !== "/login" && this.props.location.pathname !== "/signup") {
        return(
          <hgroup>
            <button className='sigup-button button' onClick={this.signup} >Signup</button>
            <button className='login-button button' onClick={this.login} >Login</button>
          </hgroup>
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
          <Search />
          {this.greeting()}
        </header>
        {this.props.children}
      </div>
    );
  }
});

module.exports = App;
