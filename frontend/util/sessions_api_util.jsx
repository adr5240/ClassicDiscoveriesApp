

const SessionsApiUtil = {

  signup: function (user, success, error) {
    $.ajax({
      url: 'api/users',
      method: 'POST',
      data: { user: { username: user.username, password: user.password }},
      success,
      error
    });
  },

  login: function (user, success, error) {
    $.ajax({
      url: 'api/sessions',
      method: 'POST',
      data: { user: { username: user.username, password: user.password }},
      success,
      error
    });
  },

  logout: function (user, success, error) {
    $.ajax({
      url: 'api/sessions',
      method: 'DELETE',
      data: user,
      success,
      error
    });
  }

};

module.exports = SessionsApiUtil;
