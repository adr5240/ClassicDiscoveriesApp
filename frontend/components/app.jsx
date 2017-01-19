const React = require('react');
const ReactRouter = require('react-router');
const SessionsStore = require('../stores/sessions_store');
const SessionsActions = require('../actions/sessions_actions');
const BookshelfActions = require('../actions/bookshelf_actions');
const BookshelfStore = require('../stores/bookshelf_store');
const Search = require('./search_box');
const hashHistory = ReactRouter.hashHistory;
const Link = ReactRouter.Link;

const Modal = require('react-modal');
const ModalStyle = require('../constants/bookshelf_modal_style');


const App = React.createClass({

    getInitialState: function () {
        this.currentUser = SessionsStore.currentUser().user;
        return ({ dropDown: false,
                  bookshelf: 'list-of-bookshelves',
                  explore: 'explore',
                  modalOpen: false,
                  bookshelf_title: "",
                  bookshelf_description: "" });
    },

    componentDidMount: function () {
        this.bookshelfListener = BookshelfStore.addListener(this._dropDown);
        this.sessionListener = SessionsStore.addListener(this.forceUpdate.bind(this));
        BookshelfActions.fetchAllBookshelves();
    },

    _bookshelfCreated: function (e) {
        this._onModalClose();
        hashHistory.push(`/users/${e.user_id}/bookshelves/${e.id}`);
    },

    _bookshelvesOff: function () {
        this.setState({ bookshelf: 'list-of-bookshelves' });
    },

    _bookshelvesOn: function () {
        this.setState({ bookshelf: 'list-of-bookshelves dropOpen' });
    },

    _closeDropDown: function () {
        this.setState({ dropDown: false, explore: 'explore' });
        this._bookshelvesOff();
    },

    _dropDown: function () {
        let self = this;
        this.bookshelves = [];

        if (this.state.dropDown) {

            let currentUser = SessionsStore.currentUser().user;
            if (currentUser) {
                this.bookshelves = BookshelfStore.allForUser(currentUser.user.id);
            }

            let results;
            let lastOption;

            if (currentUser) {
                results = this.bookshelves.map( function (shelf) {
                    return(
                        <li className='bookshelves' key={shelf.id}>
                            <Link to={`/users/${currentUser.user.id}/bookshelves/${shelf.id}`}>{shelf.title}</Link>
                        </li>
                    );
                });
                results.push(
                    <li onClick={this._openModal} className='bookshelves new-shelf' key={'new-shelf'}>
                        Add new bookshelf!
                    </li>
                );
                lastOption = <Link to={`/users/${currentUser.user.id}/bookshelves/${currentUser.bookshelves[0].id}`}>Bookshelves</Link>;
            } else {
                results = <li className='bookshelves'>
                        <Link to='/login'>You must be signed in to view bookshelves</Link>
                    </li>;
                lastOption = <Link to="#">Bookshelves</Link>;
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
                        {lastOption}
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
                        <button className='guest-button button' onClick={this.guestLogin}>Guest Login</button>
                    </div>
                );
            }
        }
    },

    guestLogin: function (e) {
        e.preventDefault();
        let username = 'Guest';
        let password = 'password';
        SessionsActions.login({username: username, password: password});
    },

    handleLogout: function () {
        SessionsActions.logout();
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

    login: function (e) {
        e.preventDefault();
        hashHistory.push('/login');
    },

    _onModalClose: function () {
        ModalStyle.content.opacity = 0;
        this.setState({ modalOpen: false });
    },

    _onModalOpen: function () {
        ModalStyle.content.opacity = 100;
    },

    _openDropDown: function () {
        this.setState({ dropDown: true, explore: 'exploring' });
    },

    _openModal: function () {
        this.setState({ modalOpen: true });
    },

    signup: function (e) {
        e.preventDefault();
        hashHistory.push('/signup');
    },

    updateDescription: function (e) {
        this.setState({ bookshelf_description: e.target.value });
    },

    updateTitle: function (e) {
        this.setState({ bookshelf_title: e.target.value });
    },

    render () {

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

        return (
            <div>
                <div className='content'>
                    <header className='navBar'>
                        <Link to='/' className='title'>ClassicDiscoveries</Link>

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
                            <h3>Add A New Bookshelf</h3>
                            <br/>
                            <input id='required' type="text" onChange={this.updateTitle} value={this.state.title}/> Bookshelf Title *
                            <br/><br/>
                            <input type="text" onChange={this.updateDescription}/> Bookshelf Description
                            <br/><br/>
                            <input type="submit" id="register" value="Add a Bookshelf!" disabled="disabled"/>
                            <br/>
                        </form>
                        <button onClick={this._onModalClose} className='closeButton'>Close</button>
                    </Modal>
                </div>
            </div>
        );
    }
});

module.exports = App;
