const AppDispatcher = require('../dispatcher/dispatcher');
const ReviewApiUtil = require('../util/review_api_util');
const ReviewConstants = require('../constants/review_constants');
const ErrorActions = require('./error_actions');

const ReviewActions = {

  fetchAllReviews: function (book_id) {
    ReviewApiUtil.fetchAllReviews(book_id, this.receiveAllReviews, ErrorActions.setErrors);
  },

  createReview: function (formData, close) {
    ReviewApiUtil.createReview(formData, close, this.reviewReceived, ErrorActions.setErrors);
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
};

module.exports = ReviewActions;
