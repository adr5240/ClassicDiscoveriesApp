// React
const React = require('react');
const ReactDOM = require('react-dom');
// Router
const ReactRouter = require('react-router');
const Router = ReactRouter.Router;
const Route = ReactRouter.Route;
const IndexRoute = ReactRouter.IndexRoute;
const hashHistory = ReactRouter.hashHistory;
const Link = require('react-router').Link;

// Components
const LoginForm = require('./components/login_form.jsx');
const BookshelfIndex = require('./components/bookshelf_index');
const BookShow = require('./components/book_show');
const Browse = require('./components/browse');

// Misc
const SessionsApiUtil = require('./util/sessions_api_util');
const SessionsStore = require('./stores/sessions_store');
const SessionsActions = require('./actions/sessions_actions');
const BookStore = require('./stores/book_store');
const BookActions = require('./actions/book_actions');


// Test


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
      )
    } else {
      if (this.props.location.pathname !== "/login" && this.props.location.pathname !== "/signup") {
        return(
          <hgroup>
            <button className='sigup-button button' onClick={this.signup} >Signup</button>
            <button className='login-button button' onClick={this.login} >Login</button>
          </hgroup>
        )
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
          {this.greeting()}
        </header>
        {this.props.children}
      </div>
    );
  }
});


const appRouter = (
  <Router history={ hashHistory } >
    <Route path='/' component={ App } >
      <IndexRoute component={ Browse } />
      <Route path='/login' component={ LoginForm } />
      <Route path='/signup' component={ LoginForm } />
      <Route path='/books' component={ BookshelfIndex } />
      <Route path='/books/:book_id' component={ BookShow } />

    </Route>
  </Router>
);

document.addEventListener("DOMContentLoaded", function () {
  const root = document.getElementById('main');
  SessionsActions.receiveCurrentUser(window.currentUser);
  ReactDOM.render(appRouter, root);
});
