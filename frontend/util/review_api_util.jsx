const ReviewApiUtil = {

  fetchAllReviews: function (book_id, success, error) {
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

  createReview: function (formData, close, success, error) {
    $.ajax({
      url: `api/books/${formData.book_id}/reviews`,
      method: 'POST',
      data: { review: formData },
      success: function (resp) {
        close();
        success(resp);
      },
      error: function (resp) {
        error('books', resp);
      }
    });
  }

};

module.exports = ReviewApiUtil;
