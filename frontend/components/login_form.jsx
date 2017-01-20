const React = require('react');
const SessionsActions = require('../actions/sessions_actions');
const SessionsStore = require('../stores/sessions_store');
const ErrorStore = require('../stores/error_store');
const ErrorActions = require('../actions/error_actions');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const Link = require('react-router').Link;

const LoginForm = React.createClass({

    getInitialState: function () {
        return ({ username: "", password: "" });
    },

    componentDidMount: function () {
        this.sessionsListener = SessionsStore.addListener(this.redirectIfLoggedIn);
        this.errorListener = ErrorStore.addListener(this.forceUpdate.bind(this));
        ErrorActions.clearErrors();
    },

    componentWillReceiveProps: function () {
        ErrorActions.clearErrors();
    },

    componentWillUnmount: function () {
        this.sessionsListener.remove();
        this.errorListener.remove();
    },

    _errors() {
        const errors = ErrorStore.errors(this.formType());
        const messages = errors.map( (errorMsg, i) => {
            return <li key={ i }>{ errorMsg }</li>;
        });
        return <ul>{ messages }</ul>;
    },

    formType: function () {
        return this.props.location.pathname.slice(1);
    },

    guestLogin: function (e) {
        e.preventDefault();
        let username = 'Guest';
        let password = 'password';
        SessionsActions.login({username: username, password: password});
    },

    handleSubmit: function (e) {
        e.preventDefault();
        if (this.props.location.pathname === "/login") {
            SessionsActions.login(this.state);
        } else {
            SessionsActions.signup(this.state);
        }
    },

    _passwordChange: function (e) {
        e.preventDefault();
        this.setState({ password: e.target.value});
    },

    redirectIfLoggedIn: function () {
        if (SessionsStore.isUserLoggedIn()) {
            hashHistory.push("/");
        }
    },

    _usernameChange: function (e) {
        e.preventDefault();
        this.setState({ username: e.target.value});
    },

    render: function () {
        let form = this.formType();
        form = form.charAt(0).toUpperCase() + form.slice(1);

        let navLink;
        if (this.formType() === "login") {
            navLink = <Link to="/signup">Signup</Link>;
        } else {
            navLink = <Link to="/login">Login</Link>;
        }

        return(
            <div className='signin-form-container'>
                <h1>Please {form}</h1>

                { this._errors() }

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
                    <input className='submit-button button' type="submit" value={form} />
                    <button className='guest-button button' onClick={this.guestLogin}>Guest Login</button>
                </form>
                <h5 className='signin-nav group'>Or feel free to {navLink}</h5>
            </div>
        );
    }
});

module.exports = LoginForm;
