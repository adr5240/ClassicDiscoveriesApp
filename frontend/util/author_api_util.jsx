const AuthorApiUtil = {

  fetchAllAuthors: function (success) {
    $.ajax({
      url: `api/authors`,
      method: 'GET',
      success: function (resp) {
        success(resp);
      }
    });
  },

  getAuthor: function (id, success, error) {
    $.ajax({
      url: `api/authors/${id}`,
      method: 'GET',
      success: function (resp) {
        success(resp);
      },
    });
  }

};

module.exports = AuthorApiUtil;

// $.ajax({
//   url: `api/authors/1`,
//   method: 'GET',
//   success: function (resp) {
//     success(resp);
//   }
// });
