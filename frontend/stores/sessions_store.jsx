const Store = require('flux/utils').Store;
const AppDispatcher = require('../dispatcher/dispatcher');
const SessionsConstants = require('../constants/sessions_constants');

const SessionsStore = new Store(AppDispatcher);

let _currentUser = {};

let _login = function (user) {
    _currentUser = {user};
};

let _logout = function (user) {
    _currentUser = {};
};

SessionsStore.currentUser = function () {
    return Object.assign({}, _currentUser);
};

SessionsStore.isUserLoggedIn = function () {
    return _currentUser.user;
};

SessionsStore.__onDispatch = function (payload) {
    switch(payload.actionType) {
        case SessionsConstants.LOGIN:
            _login(payload.user);
            SessionsStore.__emitChange();
            break;
        case SessionsConstants.LOGOUT:
            _logout();
            SessionsStore.__emitChange();
            break;
    }
};

module.exports = SessionsStore;
