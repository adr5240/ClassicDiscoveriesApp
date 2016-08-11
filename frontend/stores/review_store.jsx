const Store = require('flux/utils').Store;
const AppDispatcher = require('../dispatcher/dispatcher');
const ReviewConstants = require('../constants/books_constants');
const BookStore = require('../stores/book_store');

const ReviewStore = new Store(AppDispatcher);

let _reviews = {};

const resetAllReviews = function (reviews) {
  _reviews = {};
  for (let key in reviews) {
    _reviews[key] = reviews[key];
  }
};

const addReview = function (review) {
  _reviews[review.id] = review;
};

ReviewStore.all = function () {
  return Object.assign({}, _reviews);
};

ReviewStore.average = function () {
  let sum = 0;
  let i = 0;
  for (let key in _reviews) {
    sum += _reviews[key].review;
    i++;
  }

  return (sum / i);
};

ReviewStore.__onDispatch = function (payload) {
  switch (payload.actionType) {
    case ReviewConstants.REVIEWS_RECEIVED:
      this.resetAllReviews(payload.reviews);
      this.__emitChange();
      break;
    case ReviewConstants.REVIEW_RECEIVED:
      this.addReview(payload.review);
      this.__emitChange();
      break;
  }
};


module.exports = ReviewStore;
