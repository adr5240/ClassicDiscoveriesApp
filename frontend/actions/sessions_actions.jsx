const React = require('react');
const AppDispatcher = require('../dispatcher/dispatcher');
const SessionsConstants = require('../constants/sessions_constants');
const SessionsApiUtil = require('../util/sessions_api_util');
const hashHistory = require('react-router').hashHistory;


const SessionsActions = {

  signup: function (formData) {
    SessionsApiUtil.signup(formData, receiveCurrentUser);
  },

  login: function (formData) {
    SessionsApiUtil.login(formData, receiveCurrentUser);
  },

  logout: function () {
    SessionsApiUtil.logout(formData, removeCurrentUser);
  },

  receiveCurrentUser: function (user) {
    AppDispatcher.dispatch({
      actionType: SessionsConstants.LOGIN,
      currentUser: user
    });
  },

  removeCurrentUser: function () {
    AppDispatcher.dispatch({
      actionType: SessionsConstants.LOGOUT,
    });
    hashHistory.push('/login');
  }

};

module.exports = SessionsActions;
