const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const BookIndexItem = require('./book_index_item');
const AddReview = require('./add_review_modal');

const Modal = require('react-modal');
const ModalStyle = require('../constants/modal_style');
const Review = require('./review');

const BookShow = React.createClass({

  getInitialState: function () {
    let book_id = this.props.params.book_id;
    return ({ book: {}, id: book_id, reviews: [], modalOpen: false});
  },

  _onChange: function () {
    let currentBook = BookStore.currentBook();
    this.setState({ book: currentBook, id: currentBook.id, reviews: currentBook.reviews });
  },

  componentDidMount: function () {
    this.bookListener = BookStore.addListener(this._onChange);
    BookActions.getBook(this.state.id);
  },

  componentWillReceiveProps: function (newProps) {
    BookActions.getBook(newProps.params.book_id);
  },

  componentWillUnmount: function () {
    this.bookListener.remove();
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

    const reviews = this.state.reviews || [];
    let reviewText = "no reviews yet";
    if(reviews.length > 0) {
      reviewText = reviews.map( (review) => {
        return <Review key={review.id} {...review} />;
      });
    }

    return (
      <div className='book-show-page'>
        <BookIndexItem className='book-show-item' book={this.state.book} />
        <br />
        <div className='reviews'>
          Reviews
          { reviewText }
          <button onClick={ this.modalOpen }>Add a Review!</button>
          <Modal
            isOpen={this.state.modalOpen}
            onRequestClose={this._onModalClose}
            onAfterOpen={this._onModalOpen}
            style={ ModalStyle }>

            <button onClick={this._onModalClose}>Close</button>
            <br/>
            <AddReview bookId={this.state.id} closeModal={this._onModalClose}/>
          </Modal>
        </div>
      </div>
    );
  }

});

module.exports = BookShow;
