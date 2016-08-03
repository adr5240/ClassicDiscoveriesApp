const SessionsApiUtil = {

  signup: function (user, success, error) {
    $.ajax({
      url: 'api/users',
      method: 'POST',
      data: { user: { username: user.username, password: user.password }},
      success: function(resp) {
        success(resp);
      },
      error: function (xhr) {
        error('signup', xhr.responseJSON);
      }
    });
  },

  login: function (user, success, error) {
    $.ajax({
      url: 'api/sessions',
      method: 'POST',
      data: { user: { username: user.username, password: user.password }},
      success: function(resp) {
        success(resp);
      },
      error: function (xhr) {
        error('login', xhr.responseJSON);
      }
    });
  },

  logout: function (success, error) {
    $.ajax({
      url: 'api/sessions',
      method: 'DELETE',
      success: function(resp) {
        success(resp);
      },
      error: function (xhr) {
        error('logout', xhr.responseJSON);
      }
    });
  }

};

module.exports = SessionsApiUtil;
