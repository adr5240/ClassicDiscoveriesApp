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
const Modal = require('react-modal');

// Components
const App = require('./components/app');
const LoginForm = require('./components/login_form.jsx');
const BookIndex = require('./components/book_index');
const BookShow = require('./components/book_show');
const Browse = require('./components/browse');
const AuthorShow = require('./components/author_show');
const AuthorIndex = require('./components/author_index');
const BookshelfIndex = require('./components/bookshelf_index');

// Misc
const SessionsApiUtil = require('./util/sessions_api_util');
const SessionsStore = require('./stores/sessions_store');
const SessionsActions = require('./actions/sessions_actions');
const BookStore = require('./stores/book_store');
const BookActions = require('./actions/book_actions');

// Test


const appRouter = (
  <Router history={ hashHistory } >
    <Route path='/' component={ App } >
      <IndexRoute component={ Browse } />
      <Route path='/login' component={ LoginForm } />
      <Route path='/signup' component={ LoginForm } />
      <Route path='/books' component={ BookIndex } />
      <Route path='/books/:book_id' component={ BookShow } />
      <Route path='/authors' component={ AuthorIndex } />
      <Route path='/authors/:author_id' component={ AuthorShow } />
      <Route path='/users/:user_id/bookshelves/' component={ BookshelfIndex } />
      <Route path='/users/:user_id/bookshelves/:bookshelves_id' component={ BookshelfIndex } />

    </Route>
  </Router>
);

document.addEventListener("DOMContentLoaded", function () {
  const root = document.getElementById('main');
  Modal.setAppElement(root);
  SessionsActions.receiveCurrentUser(window.currentUser);
  ReactDOM.render(appRouter, root);
});
