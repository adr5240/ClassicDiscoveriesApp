const React = require('react');
const AppDispatcher = require('../dispatcher/dispatcher');
const SessionsConstants = require('../constants/sessions_constants');
const SessionsApiUtil = require('../util/sessions_api_util');
const ErrorActions = require('./error_actions');
const hashHistory = require('react-router').hashHistory;


const SessionsActions = {

  signup: function (formData) {
    SessionsApiUtil.signup(formData, this.receiveCurrentUser, ErrorActions.setErrors);
  },

  login: function (formData) {
    SessionsApiUtil.login(formData, this.receiveCurrentUser, ErrorActions.setErrors);
  },

  logout: function () {
    SessionsApiUtil.logout(this.removeCurrentUser, ErrorActions.setErrors);
  },

  receiveCurrentUser: function (user) {
    AppDispatcher.dispatch({
      actionType: SessionsConstants.LOGIN,
      user: user
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
