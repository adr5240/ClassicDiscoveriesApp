const React = require('react');
const SessionsActions = require('../actions/sessions_actions');
const SessionsStore = require('../stores/sessions_store');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Link = require('react-router').Link;


const LoginForm = React.createClass({

  getInitialState: function () {
    return ({ username: "", password: "" })
  },

  componentDidMount: function () {
    this.sessionsListener = SessionsStore.addListener(this.redirectIfLoggedIn)
  },

  componentWillUnmount: function () {
    this.sessionsListener.remove();
  },

  redirectIfLoggedIn: function () {
    if (SessionsStore.isUserLoggedIn()) {
      hashHistory.push("/");
    }
  },

  handleSubmit: function (e) {
    e.preventDefault();
    if (this.props.location.pathname === "/login") {
      SessionsActions.login(this.state);
    } else {
      SessionsActions.signup(this.state);
    }
  },

  _usernameChange: function (e) {
    e.preventDefault();
    this.setState({ username: e.target.value})
  },

  _passwordChange: function (e) {
    e.preventDefault();
    this.setState({ password: e.target.value})
  },

  formType() {
    return this.props.location.pathname.slice(1);
  },

  render: function () {
    let form = this.formType();
    form = form.charAt(0).toUpperCase() + form.slice(1) + '!';

    let navLink;
    if (this.formType() === "login") {
      navLink = <Link to="/signup">Signup!</Link>
    } else {
      navLink = <Link to="/login">Login!</Link>
    }

    return(
      <div className='signin-form-container'>
        <h1>Please {form}</h1>
        <form className='signin-form' onSubmit={this.handleSubmit}>
          <input type="text"
                 onChange={this._usernameChange}
                 value={this.state.username}
                 placeholder='Username' />
               <br></br>
          <input type="password"
                 onChange={this._passwordChange}
                 value={this.state.password}
                 placeholder='Password' />
          <br></br>
          <input type="submit" value={form} />
        </form>
        <h5 className='signin-nav'>Or feel free to {navLink}</h5>
      </div>
    );
  }
});

module.exports = LoginForm;
