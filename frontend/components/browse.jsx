const React = require('react');
const hashHistory = require('react-router').hashHistory;
const BookActions = require('../actions/book_actions');
const BookStore = require('../stores/book_store');
const BrowseItem = require('./browse_item');

const Modal = require('react-modal');
const ModalStyle = require('../constants/modal_style');

const Browse = React.createClass({

  getInitialState: function () {
    return { books: {}, shuffledBooks: {}, modalOpen: false, modalObject: "" };
  },

  _handleClick: function (e) {
    e.preventDefault();
    hashHistory.push(`/books/${this.props.book.id}`);
  },

  _onChange: function () {
    this.setState({ books: BookStore.all(), shuffledBooks: BookStore.shuffled() });
  },

  _handleModal: function (e) {
    e.preventDefault();
    let self = this;
    var timer;
    var delay = 750;

    this.currentBookId = e.target.getAttribute('data-book-id');
    this.setState({ modalObject: e.target });
    $(e.target).hover(function() {
      timer = setTimeout(function() {
        self.setState({ modalOpen: true });
      }, delay);
    }, function() {
      clearTimeout(timer);
    });
  },

  _onModalOpen: function () {
    ModalStyle.content.opacity = 100;
  },

  _onModalClose: function () {
    this.currentBookId = null;
    ModalStyle.content.opacity = 0;
    this.setState({ modalOpen: false });
  },

  componentDidMount: function () {
    this.bookListener = BookStore.addListener(this._onChange);
    BookActions.fetchAllBooks();
  },

  componentWillUnmount: function () {
    this.setState({ shuffledBooks: {} });
    this.bookListener.remove();
  },

  render: function () {

    let results = <h1>Loading</h1>;
    if (Object.keys(this.state.shuffledBooks).length > 0) {
      results = Object.keys(this.state.shuffledBooks).map((key) => {
        let book = this.state.shuffledBooks[key];
        return(
          <BrowseItem key={book.id} book={book} />
        );
      });
    }

    let modStyle = {
      height: '400px',
      width: '275px',
      border: '2px solid black',
      float: 'left'
    };

    let book = {title: "", description: ""};
    if (this.currentBookId) {
      book = BookStore.find(parseInt(this.currentBookId));
    }

    return(
      <div className='browse-box'>
        <h1 className='browse-title'>Browse</h1>
        <div onMouseOver={this._handleModal}>
          {results}
        </div>

        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this._onModalClose}
          onAfterOpen={this._onModalOpen}
          style={ ModalStyle }>
          <img src={this.state.modalObject.src} style={modStyle} />

          <div className='modText'>
            <h1><b>Title:</b> {book.title}</h1>
            <br/>
            <h1><b>Description:</b> {book.description}</h1>
          </div>

          <br/>
          <button onClick={this._onModalClose} className='closeButton'>Close</button>
        </Modal>
      </div>
    );
  }
});

module.exports = Browse;
