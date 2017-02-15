const React = require('react');
const BookStore = require('../stores/book_store');
const BookActions = require('../actions/book_actions');
const BookIndexItem = require('./book_index_item');

const NUM_PER_PAGE = 22;

const BookIndex = React.createClass({

    getInitialState: function () {
        return(
            { books: BookStore.all(), currentPage: 0 }
        );
    },

    componentDidMount: function () {
        this.bookListner = BookStore.addListener(this._booksChange);
        BookActions.fetchAllBooks();
    },

    componentWillUnmount: function () {
        this.bookListner.remove();
    },

    _booksChange: function () {
        this.setState({ books: BookStore.all() });
    },

    _pageTurn: function (e) {
        let newPage = parseInt(e.target.innerHTML) - 1;
        this.setState({ currentPage: newPage });
    },

    render: function () {
        let self = this;
        let results = <h1>Loading</h1>;
        if (Object.keys(this.state.books).length > 0) {
            results = [];
            let start = (this.state.currentPage * NUM_PER_PAGE) + 1;
            for(let i = start; i < start + NUM_PER_PAGE; i++) {
                let book = this.state.books[i];
                if (book) {
                    results.push(
                        <BookIndexItem key={book.id} book={book} />
                    );
                } else {
                    break;
                }
            }
        }

        return(
            <div className='book-index'>
                <ul className="pages" style={{marginTop: "75px"}}>
                    <li className="page-numbers" onClick={this._pageTurn}>1</li>
                    <li className="page-numbers" onClick={this._pageTurn}>2</li>
                    <li className="page-numbers" onClick={this._pageTurn}>3</li>
                    <li className="page-numbers" onClick={this._pageTurn}>4</li>
                    <li className="page-numbers" onClick={this._pageTurn}>5</li>
                </ul>
                <br></br>
                {results}
                <br></br>
                <ul className="pages" style={{marginTop: "75px"}}>
                    <li className="page-numbers" onClick={this._pageTurn}>1</li>
                    <li className="page-numbers" onClick={this._pageTurn}>2</li>
                    <li className="page-numbers" onClick={this._pageTurn}>3</li>
                    <li className="page-numbers" onClick={this._pageTurn}>4</li>
                    <li className="page-numbers" onClick={this._pageTurn}>5</li>
                </ul>
            </div>
        );
    }

});

module.exports = BookIndex;
