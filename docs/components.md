## Component Hierarchy

**Bolded** components are associated with routes.

(:exclamation: Remember, the bolded components are created by their
associated routes, so the nesting of your bolded components must
_**exactly**_ match the nesting of your routes.)


* **App**
  * NavBar
  * Bookshelf-Index
    * Search
    * Bookshelf-Index-Item
  * **LoginForm**
  *	**SignupForm**
  * **BooksIndex**
    * BooksIndexItem



## Routes
* **Component:** `App` **Path:** `/``
* **Component:** `LoginForm` **Path:** `/login`
* **Component:** `SignupForm` **Path:** `/signup`
* **Component:** `BooksIndex` **Path:** `/books`
* **Component:** `BooksIndexItem` **Path:** `/books/:bookId`
  * **Component:** `Author` **Path:** `/author/:authorId`
* **Component:** `BookshelfIndex` **Path:** `/myshelf/:readStatus`
  * **Component:** `BooksIndexItem` **Path:** `/books/:bookId`
* **Component:** `Author` **Path:** `/author/:authorId`
