# Flux Cycles

Flux loops are organized by data type. Under each data type, there may
be sub-categories, and each action is listed with the sequence of events
that result from its invocation, ending with the API or store. Finally,
store listeners are listed at the end.

You should be able to use this document trace an **action** starting
with where it was invoked, through the **API**/**store** involved, and
finally to the **components** that update as a result. This is important
because once you start implementing your flux loops, that's precisely
what you'll need to do.

## Auth Cycles

### Session API Request Actions

* `signUp`
  0. invoked from `SignupForm` `onSubmit`
  0. `POST /api/users` is called.
  0. `receiveCurrentUser` is set as the success callback.
* `logIn`
  0. invoked from `Navbar` `onSubmit`
  0. `POST /api/session` is called.
  0. `receiveCurrentUser` is set as the callback.
* `logOut`
  0. invoked from `Navbar` `onClick`
  0. `DELETE /api/session` is called.
  0. `removeCurrentUser` is set as the success callback.
* `fetchCurrentUser`
  0. invoked from `App` in `didMount`
  0. `GET /api/session` is called.
  0. `receiveCurrentUser` is set as the success callback.

### Session API Response Actions

* `receiveCurrentUser`
  0. invoked from an API callback
  0. stores in `_currentUser` in `CurrentUserStore`
* `removeCurrentUser`
  0. invoked from an API callback
  0. removes `_currentUser` in `CurrentUserStore`

## Error Cycles

### Error API Response Actions
* `setErrors`
  0. invoked from API callbacks on error for actions that generate POST requests
  0. sets `form` and `_errors` in the `ErrorStore`
* `removeErrors`
  0. invoked from API callbacks on success for actions that generate POST requests
  0. removes `_errors` for a given `form` in the `ErrorStore`

## Book Cycles

### Books API Request Actions

* `fetchAllBooks`
  0. invoked from `BooksIndex` `didMount`/`willReceiveProps`
  0. `GET /api/books` is called.
  0. `receiveAllBooks` is set as the success callback.

* `fetchSingleBook`
  0. invoked from `BookDetail` `didMount`/`willReceiveProps`
  0. `GET /api/books/:id` is called.
  0. `receiveSingleBook` is set as the success callback.

### Books API Response Actions

* `receiveAllBooks`
  0. invoked from an API callback.
  0. `Book` store updates `_books` and emits change.

* `receiveSingleBook`
  0. invoked from an API callback.
  0. `Book` store updates `_books[id]` and emits change.

### Store Listeners

* `BooksIndex` component listens to `Book` store.

## Bookshelf Cycles

### Bookshelf API Request Actions

* `fetchAllBookshelves`
  0. invoked from `BookshelfIndex` `didMount`/`willReceiveProps`
  0. `GET /api/bookshelf` is called.
  0. `receiveAllBookshelves` is set as the success callback.

* `createBookshelf`
  0. invoked from new bookshelf button `onClick`
  0. `POST /api/bookshelves` is called.
  0. `receiveSingleBookshelf` is set as the callback.

* `fetchSingleBookshelf`
  0. invoked from `BookshelfDetail` `didMount`/`willReceiveProps`
  0. `GET /api/bookshelves/:id` is called.
  0. `receiveSingleBookshelf` is set as the success callback.

* `updateBookshelf`
  0. invoked from `BookshelfForm` `onSubmit`
  0. `PATCH /api/bookshelves/:id` is called.
  0. `receiveSingleBookshelf` is set as the success callback.

* `destroyBookshelf`
  0. invoked from delete notebook button `onClick`
  0. `DELETE /api/bookshelves/:id` is called.
  0. `removeBookshelf` is set as the success callback.

### Bookshelves API Response Actions

* `receiveAllBookshelves`
  0. invoked from an API callback.
  0. `Bookshelf` store updates `_bookshelves` and emits change.

* `receiveSingleBookshelf`
  0. invoked from an API callback.
  0. `Bookshelf` store updates `_bookshelves[id]` and emits change.

* `removeBookshelf`
  0. invoked from an API callback.
  0. `Bookshelf` store removes `_bookshelves[id]` and emits change.

### Store Listeners

* `BookshelfIndex` component listens to `Bookshelf` store.


## SearchSuggestion Cycles

* `fetchSearchSuggestions`
  0. invoked from `BookSearchBar` `onChange` when there is text
  0. `GET /api/books` is called with `text` param.
  0. `receiveSearchSuggestions` is set as the success callback.

* `receiveSearchSuggestions`
  0. invoked from an API callback.
  0. `SearchSuggestion` store updates `_suggestions` and emits change.

* `removeSearchSuggestions`
  0. invoked from `BookSearchBar` `onChange` when empty
  0. `SearchSuggestion` store resets `_suggestions` and emits change.

### Store Listeners

* `SearchBarSuggestions` component listens to `SearchSuggestion` store.
