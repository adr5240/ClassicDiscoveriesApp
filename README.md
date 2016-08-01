# FresherNote

[Heroku link][heroku] **Note:** This should be a link to your production site

[heroku]: http://www.herokuapp.com

## Minimum Viable Product

a.	EvenBetterReads will be a site for organizing a user’s current collection of books as well as a platform for them to find other books that match their interests. Should satisfy:

- [ ] Hosting on Heroku
- [ ] New account creation, login, and guest/demo login
- [ ] A production README, replacing this README (**NB**: check out the [sample production README](docs/production_readme.md) -- you'll write this later)
- [ ] Search Box
  - [ ] Should be able to search by title or author
- [ ] Books
  - [ ] Title, author, and a short description of every book
  - [ ] Picture of the book cover
  - [ ] Should include a list of books by the same author
  - [ ] About the author section
- [ ] Bookshelves
  - [ ] Four (4) different shelves
    - [ ] All
    - [ ] Read
    - [ ] Want to read
    - [ ] Currently reading
  - [ ] Users should be able to add books to their 'all' shelf
    - [ ] Should automatically add books to other shelves by status
  - [ ] Should have smooth navigation through collection
  - [ ] Should be able to see friend's bookshelves
- [ ] Reviews
  - [ ] Every book should have a list of reviews
    - [ ] Short paragraph of how past users felt about the book
  - [ ] Reviews should be listed under the appropriate title and have author's username
- [ ] Read Status
  - [ ] List of options for every book
    - [ ] Want to read
    - [ ] Have read
    - [ ] Currently reading
    - [ ] Not interested
- [ ] Bonus
  - [ ] Ratings
    - [ ] 5-star rating system
    - [ ] Only show books with high rating
  - [ ] Tags
    - [ ] Books should be listed under certain tags (fiction/nonfiction, action, adventure, mystery, etc.)
    - [ ] Should be able to search by tags
    - [ ] Certain tags should be related (help to find new book suggestions)

## Design Docs
* [View Wireframes][views]
* [React Components][components]
* [Flux Cycles][flux-cycles]
* [API endpoints][api-endpoints]
* [DB schema][schema]

[views]: docs/views.md
[components]: docs/components.md
[flux-cycles]: docs/flux-cycles.md
[api-endpoints]: docs/api-endpoints.md
[schema]: docs/schema.md

## Implementation Timeline

### Phase 1: Backend setup and Front End User Authentication (2 days, W1 W 6pm)

**Objective:** Functioning rails project with front-end Authentication

- [ ] create new project
- [ ] create `User` model
- [ ] authentication backend setup
- [ ] create `StaticPages` controller and root view
- [ ] set up webpack & flux scaffold with skeleton files
- [ ] setup `APIUtil` to interact with the API
- [ ] set up flux cycle for frontend auth
- [ ] user signup/signin components
- [ ] blank landing component after signin
- [ ] style signin/signup components
- [ ] seed users

### Phase 2: Book Model, API, and components (2 days, W1 F 6pm)

**Objective:** Books can be Created, Indexed and Shown through
the API.

- [ ] create `Book` model
- [ ] seed the database with a small amount of test data
- [ ] CRUD API for books (`BooksController`)
- [ ] jBuilder views for books
- [ ] test out API interaction in the console.
- implement each books component, building out the flux loop as needed.
  - [ ] `BooksIndex`
  - [ ] `BookIndexItem`
- [ ] Create Read Status button
- [ ] style books components
- [ ] save a book to the DB on submit
- [ ] seed books

### Phase 3: Bookshelves (2 day, W2 Tu 6pm)

**Objective:** Books belong to Bookshelves, and can be viewed by bookshelf.

- [ ] create `Bookshelf` model
- build out API, Flux loop, and components for:
  - [ ] Bookshelf CRUD
  - [ ] saving books requires a bookshelf
  - [ ] moving books to a different bookshelf
  - [ ] viewing books by bookshelf
- [ ] Use CSS to style new components
- [ ] Seed Bookshelves

Phase 3 adds organization to the Books. Books belong to a Bookshelf,
which has its own `Index` view.

### Phase 4: Reviews and Start CSS (1 days, W2 W 6pm)

**Objective:** Books can be reviewed by users.

- [ ] create `Review` model
- build out API, Flux loop, and components for:
  - [ ] fetching reviews for book
  - [ ] adding reviews to books
  - [ ] edit own reviews
- [ ] Style new elements
- [ ] Seed reviews and add reviews to the seeded books

### Phase 5: Allow Complex Styling in Books (1 days, W2 Th 6pm)

**objective:** Enable complex styling of books.

- [ ] Continue with CSS
- [ ] create user friendly scrolling through all books/books on shelf

### Phase 6: - Pagination / infinite scroll for Notes Index (1 day, W2 F 6pm)

**objective:** Add infinite scroll to Notes Index

- [ ] Paginate Notes Index API to send 20 results at a time
- [ ] Append next set of results when user scrolls and is near bottom
- [ ] Make sure styling still looks good
- [ ] Ensure we have enough seeded notes to demo infinite scroll

### Bonus Features (TBD)
- [ ] Create a rating system, only show books with high rating
- [ ] Add tags to books
  - [ ] Be able to search by tags

[phase-one]: docs/phases/phase1.md
[phase-two]: docs/phases/phase2.md
[phase-three]: docs/phases/phase3.md
[phase-four]: docs/phases/phase4.md
[phase-five]: docs/phases/phase5.md
