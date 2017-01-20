const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const BookIndexItem = require('./book_index_item');
const AddReview = require('./add_review_modal');
const SessionsStore = require('../stores/sessions_store');
const hashHistory = require('react-router').hashHistory;
const Modal = require('react-modal');
const ReviewModalStyle = require('../constants/review_modal_style');
const Review = require('./review');

const BookShow = React.createClass({

    getInitialState: function () {
        let book_id = this.props.params.book_id;
        return ({ book: {}, id: book_id, reviews: [], modalOpen: false});
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

    _login: function () {
        hashHistory.push('/login');
    },

    modalOpen: function () {
        this.setState({ modalOpen: true });
    },

    _onChange: function () {
        let currentBook = BookStore.currentBook();
        this.setState({ book: currentBook, id: currentBook.id, reviews: currentBook.reviews });
    },

    _onModalClose: function () {
        ReviewModalStyle.content.opacity = 0;
        this.setState({ modalOpen: false });
    },

    _onModalOpen: function () {
        ReviewModalStyle.content.opacity = 100;
    },

    render: function () {

        const reviews = this.state.reviews || [];
        let reviewText = "no reviews yet";
        if(reviews.length > 0) {
            reviewText = reviews.map( (review) => {
                return <Review key = {review.id} {...review} />;
            });
            reviewText.reverse();
        }
        let button;
        if (SessionsStore.currentUser().user) {
            button = (<button onClick={ this.modalOpen }>Tell us what you thought!</button>);
        } else {
            button = (<button onClick={ this._login } >Please SignIn to leave a review</button>);
        }

        return (
            <div className='book-show-page'>
                <BookIndexItem className='book-show-item' book={this.state.book} />
                <br />
                <div className='reviews'>
                    <div className='review-list'>
                        <h1 className='review-title'>Reviews</h1>
                        <br />
                        { button }
                        <br />

                        { reviewText }
                        <Modal
                            isOpen={this.state.modalOpen}
                            onRequestClose={this._onModalClose}
                            onAfterOpen={this._onModalOpen}
                            style={ ReviewModalStyle }>

                            <button className='review-close' onClick={this._onModalClose}>Close</button>
                            <br/>
                            <AddReview bookId={this.state.id} closeModal={this._onModalClose}/>
                        </Modal>
                    </div>
                </div>
            </div>
        );
    }

});

module.exports = BookShow;
