const React = require('react');
const AuthorStore = require('../stores/author_store');
const AuthorActions = require('../actions/author_actions');
const AuthorIndexItem = require('./author_index_item');

const NUM_PER_PAGE = 30;

const AuthorIndex = React.createClass({

    getInitialState: function () {
        return({ authors: AuthorStore.all(), currentPage: 0 });
    },

    componentDidMount: function () {
        this.authorListner = AuthorStore.addListener(this._authorsChange);
        AuthorActions.fetchAllAuthors();
    },

    componentWillUnmount: function () {
        this.authorListner.remove();
    },

    _authorsChange: function () {
        this.setState({ authors: AuthorStore.all() });
    },

    _pageTurn: function (e) {
        let newPage = parseInt(e.target.innerHTML) - 1;
        this.setState({ currentPage: newPage });
    },

    render: function () {
        let results = <h1>Loading</h1>;
        if (Object.keys(this.state.authors).length > 0) {
            results = [];
            let start = (this.state.currentPage * NUM_PER_PAGE) + 1;
            for(let i = start; i < start + NUM_PER_PAGE; i++) {
                let author = this.state.authors[i];
                if (author) {
                    results.push(
                        <AuthorIndexItem key={author.id} author={author} />
                    );
                } else {
                    break;
                }
            }
        }
        return(
            <div>
                <ul className="pages" style={{marginTop: "75px"}}>
                    <li className="page-numbers" onClick={this._pageTurn}>1</li>
                    <li className="page-numbers" onClick={this._pageTurn}>2</li>
                </ul>
                <div className='author-index'>
                    <br></br>
                    {results}
                </div>
            </div>
        );
    }

});

module.exports = AuthorIndex;
