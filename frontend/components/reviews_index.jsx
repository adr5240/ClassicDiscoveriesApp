const React = require('react');
const ReviewStore = require('../stores/review_store');
const ReviewActions = require('../actions/reviews_actions');
const AddReview = require('./add_review_modal');

const Modal = require('react-modal');
const ModalStyle = require('../constants/modal_style');

const ReviewIndex = React.createClass({

  getInitialState: function () {
    return ({ reviews: [], modalOpen: false });
  },

  componentDidMount: function () {
    this.reviewListener = ReviewStore.addListener(this.fetchBookReviews);
    ReviewActions.fetchAllReviews(this.props.bookId);
  },

  componentWillUnmount: function () {
    this.reviewListener.remove();
  },

  fetchBookReviews: function () {
    this.setState({ reviews: ReviewStore.all() });
  },

  modalOpen: function () {
    this.setState({ modalOpen: true });
  },

  _onModalOpen: function () {
    ModalStyle.content.opacity = 100;
  },

  _onModalClose: function () {
    ModalStyle.content.opacity = 0;
    this.setState({ modalOpen: false });
  },

  render: function () {
    return (
      <div>
        Reviews
        {this.state.reviews}
        <button onClick={ this.modalOpen }>Click me!</button>
        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this._onModalClose}
          onAfterOpen={this._onModalOpen}
          style={ ModalStyle }>

          <button onClick={this._onModalClose}>Close</button>
          <br/>
          <AddReview bookId={this.props.bookId} close={this._onModalClose}/>
        </Modal>
      </div>
    );
  }
});

module.exports = ReviewIndex;
