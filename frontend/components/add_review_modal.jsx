const React = require('react');
const SessionsStore = require('../stores/sessions_store');
const BookActions = require('../actions/book_actions');
const AddReview = React.createClass({

  getInitialState: function () {
    return({
      body: "",
      rating: '0',
    });
  },

  componentDidMount: function () {
    this.sessionListener = SessionsStore.addListener(this._signOut);
    this.currentUser = SessionsStore.currentUser().user;
  },

  componentWillUnmount: function () {
    this.sessionListener.remove();
  },

  _signOut: function () {
    this.props.close();
  },

  updateBody: function (e) {
    this.setState({ body: e.target.value });
  },

  updateRating: function (e) {
    this.setState({ rating: e.target.id });
  },

  _handleSubmit: function (e) {
    e.preventDefault();
    let data = { body: this.state.body,
                 rating: this.state.rating,
                 user_id: this.currentUser.user.id,
                 book_id: this.props.bookId };
    BookActions.addReview(data, this.props.closeModal);
  },

  render: function () {

    let rating = this.state.rating;
    $(`input[id=${rating}]`).attr('checked', true);

    return(
      <form className='add-review-form' onSubmit={this._handleSubmit}>
        Tell us what you thought!
        <br/>
        <textarea onChange={this.updateBody} value={this.state.body}>Your thoughts</textarea>
        <br/>
        <span className="rating required" onClick={this.updateRating}>
          <input type="radio" className="rating-input"
                id='5' name="ratingInput" />
              <label id='5' className="rating-star"></label>
          <input type="radio" className="rating-input"
                id='4' name="ratingInput" />
              <label id='4' className="rating-star"></label>
          <input type="radio" className="rating-input"
                id='3' name="ratingInput" />
              <label id='3' className="rating-star"></label>
          <input type="radio" className="rating-input"
                id='2' name="ratingInput" />
              <label id='2' className="rating-star"></label>
          <input type="radio" className="rating-input"
                id='1' name="ratingInput" />
              <label id='1' className="rating-star"></label>
        </span>
        <br/>
        <input type="submit" value="Add Your Review!"/>

        <br/>
        <h4>* indicates required field</h4>
      </form>
    );
  }

});

module.exports = AddReview;
