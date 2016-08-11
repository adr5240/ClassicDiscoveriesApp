const AppDispatcher = require('../dispatcher/dispatcher');
const ReviewApiUtil = require('../util/review_api_util');
const ReviewConstants = require('../constants/review_constants');
const ErrorActions = require('./error_actions');

const Review = React.createClass ({

  fetchAllReviews: function (book_id) {
    ReviewApiUtil.fetchAllReviews(book_id, this.receiveAllReviews, ErrorActions.setErrors);
  },

  createReview: function (formData, book_id) {
    ReviewApiUtil.createReview(formDate, book_id, this.reviewReceived, ErrorActions.setErrors);
  },

  receiveAllReviews: function (reviews) {
    AppDispatcher.dispatch({
      actionType: ReviewConstants.REVIEWS_RECEIVED,
      reviews: reviews
    });
  },

  reviewReceived: function (review) {
    AppDispatcher.dispatch({
      actionType: ReviewConstants.REVIEW_RECEIVED,
      review: review
    });
  }
});

module.exports = Review;
