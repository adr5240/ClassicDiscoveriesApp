const Store = require('flux/utils').Store;
const AppDispatcher = require('../dispatcher/dispatcher');
const SessionsStore = new Store(AppDispatcher);

let currentUser = {};




let _login = function (user) {
  currentUser[user.id] = user;
  SessionsStore.__emitChange();
};

let _logout = function (user) {
  currentUser = {};
  SessionsStore.__emitChange();
};



module.exports = SessionsStore;
