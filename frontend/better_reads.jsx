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
const SessionsApiUtil = require('./util/sessions_api_util');

//Misc
window.SessionsApiUtil = SessionsApiUtil;


SessionsApiUtil.signup({username: 'bill1', password: 'starwars'}, () => console.log("YAY"), () => console.log("NAY..."));

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

    </Route>
  </Router>
);

document.addEventListener("DOMContentLoaded", appRouter);
