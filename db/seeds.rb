

# Users
User.destroy_all
guest = User.create(username: 'Potential_Employer', password: 'password');


# Authors
Author.destroy_all
a1 = Author.create(fname: "George",
                   mid_name: "R.R.",
                   lname: "Martin",
                   description: "George R. R. Martin was born September 20, 1948, in Bayonne, New Jersey. His father was Raymond Collins Martin, a longshoreman, and his mother was Margaret Brady Martin. He has two sisters, Darleen Martin Lapinski and Janet Martin Patten.")


# Books
Book.destroy_all
book1 = Book.create(title: 'A Game of Thrones',
                    description: "From a master of contemporary fantasy comes the first novel of a landmark series unlike any you’ve ever read before. With A Game of Thrones, George R. R. Martin has launched a genuine masterpiece, bringing together the best the genre has to offer. Mystery, intrigue, romance, and adventure fill the pages of this magnificent saga, the first volume in an epic series sure to delight fantasy fans everywhere.",
                    author_id: Author.find_by_name("George R.R. Martin").id,
                    book_cover: File.open('app/assets/images/book_covers/GOT/a-game-of-thrones.jpg'))

book2 = Book.create(title: 'A Clash of Kings',
                    description: "In this eagerly awaited sequel to A Game of Thrones, George R. R. Martin has created a work of unsurpassed vision, power, and imagination. A Clash of Kings transports us to a world of revelry and revenge, wizardry and warfare unlike any you have ever experienced.",
                    author_id: Author.find_by_name("George R.R. Martin").id,
                    book_cover: File.open('app/assets/images/book_covers/GOT/a-clash-of-kings.jpg'))

book3 = Book.create(title: 'A Storm of Swords',
                    description: "Here is the third volume in George R. R. Martin’s magnificent cycle of novels that includes A Game of Thrones and A Clash of Kings. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.",
                    author_id: Author.find_by_name("George R.R. Martin").id,
                    book_cover: File.open('app/assets/images/book_covers/GOT/a-storm-of-swords.jpg'))

book4 = Book.create(title: 'A Feast for Crows',
                    description: "Few books have captivated the imagination and won the devotion and praise of readers and critics everywhere as has George R. R. Martin’s monumental epic cycle of high fantasy. Now, in A Feast for Crows, Martin delivers the long-awaited fourth book of his landmark series, as a kingdom torn asunder finds itself at last on the brink of peace . . . only to be launched on an even more terrifying course of destruction.",
                    author_id: Author.find_by_name("George R.R. Martin").id,
                    book_cover: File.open('app/assets/images/book_covers/GOT/a-feast-for-crows.jpg'))

book5 = Book.create(title: 'A Dance with Dragons',
                    description: "Dubbed “the American Tolkien” by Time magazine, George R. R. Martin has earned international acclaim for his monumental cycle of epic fantasy. Now the #1 New York Times bestselling author delivers the fifth book in his landmark series—as both familiar faces and surprising new forces vie for a foothold in a fragmented empire. ",
                    author_id: Author.find_by_name("George R.R. Martin").id,
                    book_cover: File.open('app/assets/images/book_covers/GOT/a-dance-with-dragons.jpg'))
