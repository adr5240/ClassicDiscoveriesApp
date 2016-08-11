const ReviewApiUtil = {

  fetchAllReviews: function (book_id) {
    $.ajax({
      url: `api/books/${book_id}/reviews`,
      method: 'GET',
      success: function (resp) {
        success(resp);
      },
      error: function (resp) {
        error('books', resp);
      }
    });
  },

  createReview: function (formData, book_id) {
    $.ajax({
      url: `api/books/${book_id}/reviews`,
      method: 'POST',
      processData: false,
      contentType: false,
      data: formData,
      success: function (resp) {
        hashHistory.push(`/books/${book_id}/reviews`);
        success(resp);
      },
      error: function (resp) {
        error('books', resp);
      }
    });
  }

};

module.exports = ReviewApiUtil;
