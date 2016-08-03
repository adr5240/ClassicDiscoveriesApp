//React
const React = require('react');
const ReactDOM = require('react-dom');
//Router
const ReactRouter = require('react-router');
const Router = ReactRouter.Router;
const Route = ReactRouter.Route;
const IndexRoute = ReactRouter.IndexRoute;
const hashHistory = ReactRouter.hashHistory;

//Components
const LoginForm = require('./components/login_form.jsx');

//Misc
const SessionsApiUtil = require('./util/sessions_api_util');

const App = React.createClass({
  render () {
    return (
      <div>
        <h1>Better Reads</h1>
        {this.props.children}
      </div>
    );
  }
});


const appRouter = (
  <Router history={ hashHistory } >
    <Route path='/' component={ App } >
      <Route path='/login' component={ LoginForm } />
      <Route path='/signup' component={ LoginForm } />

    </Route>
  </Router>
);

document.addEventListener("DOMContentLoaded", function () {
  const root = document.getElementById('main');
  ReactDOM.render(appRouter, root);
});
