

# Users
User.destroy_all
guest = User.create(username: 'Guest', password: 'password');


# ____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
# ____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
# Authors
Author.destroy_all
a1 = Author.create(fname: "George",
                   mid_name: "R.R.",
                   lname: "Martin",
                   image: File.open('app/assets/images/authors/george-rr-martin.jpg'),
                   description: "George R. R. Martin was born September 20, 1948, in Bayonne, New Jersey. His father was Raymond Collins Martin, a longshoreman, and his mother was Margaret Brady Martin. He has two sisters, Darleen Martin Lapinski and Janet Martin Patten.")

a2 = Author.create(fname: "J.K.",
                   mid_name: "",
                   lname: "Rowling",
                   image: File.open('app/assets/images/authors/jk-rowling.jpg'),
                   description: "Although she writes under the pen name J.K. Rowling, pronounced like rolling, her name when her first Harry Potter book was published was simply Joanne Rowling. Anticipating that the target audience of young boys might not want to read a book written by a woman, her publishers demanded that she use two initials, rather than her full name. As she had no middle name, she chose K as the second initial of her pen name, from her paternal grandmother Kathleen Ada Bulgen Rowling. She calls herself Jo and has said, \"No one ever called me 'Joanne' when I was young, unless they were angry.\" Following her marriage, she has sometimes used the name Joanne Murray when conducting personal business. During the Leveson Inquiry she gave evidence under the name of Joanne Kathleen Rowling. In a 2012 interview, Rowling noted that she no longer cared that people pronounced her name incorrectly.")

a3 = Author.create(fname: 'J.R.R.',
                   mid_name: '',
                   lname: 'Tolkien',
                   image: File.open('app/assets/images/authors/jrr-tolkien.jpg'),
                   description: "John Ronald Reuel Tolkien, CBE, was an English writer, poet, WWI veteran (a First Lieutenant in the Lancashire Fusiliers, British Army), philologist, and university professor, best known as the author of the high fantasy classic works The Hobbit and The Lord of the Rings.\n\nTolkien was Rawlinson and Bosworth Professor of Anglo-Saxon at Oxford from 1925 to 1945, and Merton Professor of English language and literature from 1945 to 1959. He was a close friend of C.S. Lewis.\n\nChristopher Tolkien published a series of works based on his father\'s extensive notes and unpublished manuscripts, including The Silmarillion . These, together with The Hobbit and The Lord of the Rings, form a connected body of tales, poems, fictional histories, invented languages, and literary essays about an imagined world called Arda, and Middle-earth within it. Between 1951 and 1955, Tolkien applied the word \"legendarium\" to the larger part of these writings.")

a4 = Author.create(fname: 'Leigh',
                   mid_name: '',
                   lname: 'Bardugo',
                   image: File.open('app/assets/images/authors/leigh-bardugo.jpg'),
                   description: "Leigh Bardugo is the New York Times and USA Today bestselling author of the Grisha Trilogy (Shadow and Bone, Siege and Storm, and Ruin and Rising).\n\nShe was born in Jerusalem, grew up in Los Angeles, and graduated from Yale University, and has worked in advertising, journalism, and most recently, makeup and special effects. These days, she’s lives and writes in Hollywood where she can occasionally be heard singing with her band. Her new book, Six of Crows, arrives fall 2015.")

a5 = Author.create(fname: 'Suzanne',
                   mid_name: '',
                   lname: 'Brockmann',
                   image: File.open('app/assets/images/authors/suzanne-brockmann.jpg'),
                   description: "Suzanne Brockmann was born in 1960. Married with Ed Gaffney, a lawyer and published writer. They have two grown children: Melanie, who is a personal trainer and author, and Jason, who is an actor and tap dancer. They divide their time between Boston, Massachusetts, Sarasota, Florida and New York City.\n\nPublished since 1993, Suzanne is widely recognized as one of the leading voices in suspense romance genre. She has been on the USA Today and New York Times bestseller lists and has received many awards including being named Romance Writers of America’s #1 Favorite Book of the Year three times. She has also received two RITAs and Romantic Times Reviewers’ Choice Awards.\n\nWhen Suzanne isn't writing, she's busy making music. Formerly the lead singer and songwriter for an original Boston rock band, she is now vocal arranger, director, and lead alto of the eight-voice a cappella group Serious Fun. She is one of the founders and volunteer organizers of Natick's Appalachian Benefit Coffeehouse, raising money for the Cabell/Lincoln Country Workcamp, which rebuilds housing for the poor, elderly and disabled in West Virginia. She is a proud member of PFLAG -- Parents, Families and Friends of Lesbians and Gays. She is also a card-carrying member of the American Civil Liberties Union, the Human Rights Campaign, and MassEquality. A firm believer in civil rights for all people, she has fought hard to bring equal marriage rights to all citizens of her home state, Massachusetts. ")

a6 = Author.create(fname: 'Dan',
                   mid_name: '',
                   lname: 'Brown',
                   image: File.open('app/assets/images/authors/dan-brown.jpg'),
                   description: "Dan Brown is the author of numerous #1 bestselling novels, including The Da Vinci Code, which has become one of the best selling novels of all time as well as the subject of intellectual debate among readers and scholars. Brown’s novels are published in 52 languages around the world with 200 million copies in print.\n\nIn 2005, Brown was named one of the 100 Most Influential People in the World by TIME Magazine, whose editors credited him with “keeping the publishing industry afloat; renewed interest in Leonardo da Vinci and early Christian history; spiking tourism to Paris and Rome; a growing membership in secret societies; the ire of Cardinals in Rome; eight books denying the claims of the novel and seven guides to read along with it; a flood of historical thrillers; and a major motion picture franchise.”\n\nThe son of a mathematics teacher and a church organist, Brown was raised on a prep school campus where he developed a fascination with the paradoxical interplay between science and religion. These themes eventually formed the backdrop for his books. He is a graduate of Amherst College and Phillips Exeter Academy, where he later returned to teach English before focusing his attention full time to writing.\n\nBrown is currently at work on a new book as well as the Columbia Pictures film version of his most recent novel.")

a7 = Author.create(fname: 'Tom',
                   mid_name: '',
                   lname: 'Clancy',
                   image: File.open('app/assets/images/authors/tom-clancy.jpg'),
                   description: "Tom Clancy was an English major at Baltimore’s Loyola College. As a Maryland insurance broker with a passion for naval history, his dream of writing a novel came true with his first effort, The Hunt for Red October (1984).\n\nHe since wrote more than a dozen novels, which have a blend of realism and authenticity, intricate plotting, and razor-sharp suspense. Ten of the novels, including The Teeth of the Tiger (Berkley, 2004), feature the character Jack Ryan, former stock broker and CIA employee.\n\nClancy’s non-fiction works include a series of guided tours of America’s warfighting assets, Submarine, Armored Cav, Fighter Wing, Marine, and Airborne.\n\nHe lived in Maryland.")

a8 = Author.create(fname: 'Daniel',
                   mid_name: '',
                   lname: 'Quinn',
                   image: File.open('app/assets/images/authors/daniel-quinn.jpg'),
                   description: "I had and did the usual things -- childhood, schools, universities (St. Louis, Vienna, Loyola of Chicago), then embarked on a career in publishing in Chicago. Within a few years I was the head of the Biography & Fine Arts Department of the American Peoples Encyclopedia; when that was subsumed by a larger outfit and moved to New York, I stayed behind and moved into educational publishing, beginning at Science Research Associates (a division of IBM) and ending as Editorial Director of The Society for Vision Education (a division of the Singer Corporation).\n\nIn 1977 I walked away from SVE and this very successful career when it became clear that I was not going to able to do there what I really wanted to do...which was not entirely clear. A few months later I set my feet on a path that would change my life completely. It was a path made up of books -- or rather versions of a book that, after twelve years, would turn out to be ISHMAEL.")

a9 = Author.create(fname: 'Orson',
                   mid_name: 'Scott',
                   lname: 'Card',
                   image: File.open('app/assets/images/authors/orson-scott-card.jpg'),
                   description: "Orson Scott Card is the author of the novels Ender's Game, Ender's Shadow, and Speaker for the Dead, which are widely read by adults and younger readers, and are increasingly used in schools.\n\nBesides these and other science fiction novels, Card writes contemporary fantasy (Magic Street, Enchantment, Lost Boys), biblical novels (Stone Tables, Rachel and Leah), the American frontier fantasy series The Tales of Alvin Maker (beginning with Seventh Son), poetry (An Open Book), and many plays and scripts.\n\nCard was born in Washington and grew up in California, Arizona, and Utah. He served a mission for the LDS Church in Brazil in the early 1970s. Besides his writing, he teaches occasional classes and workshops and directs plays. He recently began a longterm position as a professor of writing and literature at Southern Virginia University.\n\nCard currently lives in Greensboro, North Carolina, with his wife, Kristine Allen Card, and their youngest child, Zina Margaret.")

a10 = Author.create(fname: 'Suzanne',
                    mid_name: '',
                    lname: 'Collins',
                    image: File.open('app/assets/images/authors/suzanne-collins.jpg'),
                    description: "Since 1991, Suzanne Collins has been busy writing for children’s television. She has worked on the staffs of several Nickelodeon shows, including the Emmy-nominated hit Clarissa Explains it All and The Mystery Files of Shelby Woo. For preschool viewers, she penned multiple stories for the Emmy-nominated Little Bear and Oswald. She also co-wrote the critically acclaimed Rankin/Bass Christmas special, Santa, Baby! Most recently she was the Head Writer for Scholastic Entertainment’s Clifford’s Puppy Days.\n\nWhile working on a Kids WB show called Generation O! she met children’s author James Proimos, who talked her into giving children’s books a try.\n\nThinking one day about Alice in Wonderland, she was struck by how pastoral the setting must seem to kids who, like her own, lived in urban surroundings. In New York City, you’re much more likely to fall down a manhole than a rabbit hole and, if you do, you’re not going to find a tea party. What you might find...? Well, that’s the story of Gregor the Overlander, the first book in her five-part series, The Underland Chronicles. Suzanne also has a rhyming picture book illustrated by Mike Lester entitled When Charlie McButton Lost Power.\n\nShe currently lives in Connecticut with her family and a pair of feral kittens they adopted from their backyard.")

a11 = Author.create(fname: 'Harper',
                    mid_name: '',
                    lname: 'Lee',
                    image: File.open('app/assets/images/authors/harper-lee.jpg'),
                    description: "Harper Lee, known as Nelle, was born in the Alabama town of Monroeville, the youngest of four children of Amasa Coleman Lee and Frances Cunningham Finch Lee. Her father, a former newspaper editor and proprietor, was a lawyer who served on the state legislature from 1926 to 1938. As a child, Lee was a tomboy and a precocious reader, and enjoyed the friendship of her schoolmate and neighbor, the young Truman Capote.\n\nAfter graduating from high school in Monroeville, Lee enrolled at the all-female Huntingdon College in Montgomery (1944-45), and then pursued a law degree at the University of Alabama (1945-50), pledging the Chi Omega sorority. While there, she wrote for several student publications and spent a year as editor of the campus humor magazine, \"Ramma-Jamma\". Though she did not complete the law degree, she studied for a summer in Oxford, England, before moving to New York in 1950, where she worked as a reservation clerk with Eastern Air Lines and BOAC.\n\nLee continued as a reservation clerk until the late 50s, when she devoted herself to writing. She lived a frugal life, traveling between her cold-water-only apartment in New York to her family home in Alabama to care for her father.\n\nHaving written several long stories, Harper Lee located an agent in November 1956. The following month at the East 50th townhouse of her friends Michael Brown and Joy Williams Brown, she received a gift of a year's wages with a note: \"You have one year off from your job to write whatever you please. Merry Christmas.\"\n\nWithin a year, she had a first draft. Working with J. B. Lippincott & Co. editor Tay Hohoff, she completed To Kill a Mockingbird in the summer of 1959. Published July 11, 1960, the novel was an immediate bestseller and won great critical acclaim, including the Pulitzer Prize for Fiction in 1961. It remains a bestseller with more than 30 million copies in print. In 1999, it was voted \"Best Novel of the Century\" in a poll by the Library Journal.")

a12 = Author.create(fname: 'F.',
                    mid_name: 'Scott',
                    lname: 'Fitzgerald',
                    image: File.open('app/assets/images/authors/f-scott-fitzgerald.jpg'),
                    description: "Francis Scott Key Fitzgerald was an American writer of novels and short stories, whose works have been seen as evocative of the Jazz Age, a term he himself allegedly coined. He is regarded as one of the greatest twentieth century writers. Fitzgerald was of the self-styled \"Lost Generation,\" Americans born in the 1890s who came of age during World War I. He finished four novels, left a fifth unfinished, and wrote dozens of short stories that treat themes of youth, despair, and age. He was married to Zelda Fitzgerald.")

a13 = Author.create(fname: 'William',
                    mid_name: '',
                    lname: 'Golding',
                    image: File.open('app/assets/images/authors/william-golding.jpg'),
                    description: "Sir William Gerald Golding was a British novelist, poet, and playwright best known for his 1954 novel Lord of the Flies. He was awarded the Booker Prize for literature in 1980 for his novel Rites of Passage, the first book of the trilogy To the Ends of the Earth. He was awarded the Nobel Prize for Literature in 1983 and was knighted in 1988.\n\nIn 2008, The Times ranked Golding third on their list of \"The 50 greatest British writers since 1945\".")

a14 = Author.create(fname: 'Stieg',
                    mid_name: '',
                    lname: 'Larsson',
                    image: File.open('app/assets/images/authors/stieg-larsson.jpg')
                    description: "Stieg Larsson (born as Karl Stig-Erland Larsson) was a Swedish journalist and writer who passed away in 2004.\n\nAs a journalist and editor of the magazine Expo , Larsson was active in documenting and exposing Swedish extreme right and racist organisations. When he died at the age of 50, Larsson left three unpublished thrillers and unfinished manuscripts for more. The first three books ( The Girl With the Dragon Tattoo , The Girl Who Played With Fire and The Girl Who Kicked the Hornets' Nest ) have since been printed as the Millenium series. These books are all bestsellers in Sweden and in several other countries, including the United States and Canada.")

a15 = Author.create(fname: 'Miguel',
                    mid_name: 'de Cervantes',
                    lname: 'Saavedra',
                    image: File.open('app/assets/images/authors/miguel-saavedra.jpg'),
                    description: "Miguel de Cervantes Saavedra was a Spanish novelist, poet, and playwright. His novel Don Quixote is often considered his magnum opus, as well as the first modern novel.\n\nIt is assumed that Miguel de Cervantes was born in Alcalá de Henares. His father was Rodrigo de Cervantes, a surgeon of cordoban descent. Little is known of his mother Leonor de Cortinas, except that she was a native of Arganda del Rey.\n\nIn 1569, Cervantes moved to Italy, where he served as a valet to Giulio Acquaviva, a wealthy priest who was elevated to cardinal the next year. By then, Cervantes had enlisted as a soldier in a Spanish Navy infantry regiment and continued his military life until 1575, when he was captured by Algerian corsairs. He was then released on ransom from his captors by his parents and the Trinitarians, a Catholic religious order. He subsequently returned to his family in Madrid.\n\nIn Esquivias (Province of Toledo), on 12 December 1584, he married the much younger Catalina de Salazar y Palacios (Toledo, Esquivias –, 31 October 1626), daughter of Fernando de Salazar y Vozmediano and Catalina de Palacios. Her uncle Alonso de Quesada y Salazar is said to have inspired the character of Don Quixote. During the next 20 years Cervantes led a nomadic existence, working as a purchasing agent for the Spanish Armada and as a tax collector. He suffered a bankruptcy and was imprisoned at least twice (1597 and 1602) for irregularities in his accounts. Between 1596 and 1600, he lived primarily in Seville. In 1606, Cervantes settled in Madrid, where he remained for the rest of his life.\n\nCervantes died in Madrid on April 23, 1616.")

a16 = Author.create(fname: 'Charles',
                    mid_name: '',
                    lname: 'Dickens',
                    image: File.open('app/assets/images/authors/charles-dickens.jpg'),
                    description: "Charles John Huffam Dickens (7 February 1812 – 9 June 1870) was an English writer and social critic. He created some of the world's best-known fictional characters and is regarded as the greatest novelist of the Victorian era. His works enjoyed unprecedented popularity during his lifetime, and by the twentieth century critics and scholars had recognised him as a literary genius. His novels and short stories enjoy lasting popularity.\n\nBorn in Portsmouth, Dickens left school to work in a factory when his father was incarcerated in a debtors\' prison. Despite his lack of formal education, he edited a weekly journal for 20 years, wrote 15 novels, five novellas, hundreds of short stories and non-fiction articles, lectured and performed extensively, was an indefatigable letter writer, and campaigned vigorously for children's rights, education, and other social reforms.\n\nDickens was regarded as the literary colossus of his age. His 1843 novella, A Christmas Carol, remains popular and continues to inspire adaptations in every artistic genre. Oliver Twist and Great Expectations are also frequently adapted, and, like many of his novels, evoke images of early Victorian London. His 1859 novel, A Tale of Two Cities, set in London and Paris, is his best-known work of historical fiction. Dickens's creative genius has been praised by fellow writers—from Leo Tolstoy to George Orwell and G. K. Chesterton—for its realism, comedy, prose style, unique characterisations, and social criticism. On the other hand, Oscar Wilde, Henry James, and Virginia Woolf complained of a lack of psychological depth, loose writing, and a vein of saccharine sentimentalism. The term Dickensian is used to describe something that is reminiscent of Dickens and his writings, such as poor social conditions or comically repulsive characters.\n\nOn 8 June 1870, Dickens suffered another stroke at his home after a full day\'s work on Edwin Drood. He never regained consciousness, and the next day, five years to the day after the Staplehurst rail crash, he died at Gad\'s Hill Place. Contrary to his wish to be buried at Rochester Cathedral \"in an inexpensive, unostentatious, and strictly private manner,\" he was laid to rest in the Poets\' Corner of Westminster Abbey. A printed epitaph circulated at the time of the funeral reads: \"To the Memory of Charles Dickens (England's most popular author) who died at his residence, Higham, near Rochester, Kent, 9 June 1870, aged 58 years. He was a sympathiser with the poor, the suffering, and the oppressed; and by his death, one of England's greatest writers is lost to the world.\" His last words were: \"On the ground\", in response to his sister-in-law Georgina\'s request that he lie down.")

a17 = Author.create(fname: 'J.D.',
                    mid_name: '',
                    lname: 'Salinger',
                    image: File.open('app/assets/images/authors/jd-salinger.jpg'),
                    description: "Jerome David Salinger was an American author, best known for his 1951 novel The Catcher in the Rye, as well as his reclusive nature. His last original published work was in 1965; he gave his last interview in 1980. Raised in Manhattan, Salinger began writing short stories while in secondary school, and published several stories in the early 1940s before serving in World War II. In 1948 he published the critically acclaimed story \"A Perfect Day for Bananafish\" in The New Yorker magazine, which became home to much of his subsequent work. In 1951 Salinger released his novel The Catcher in the Rye, an immediate popular success. His depiction of adolescent alienation and loss of innocence in the protagonist Holden Caulfield was influential, especially among adolescent readers. The novel remains widely read and controversial, selling around 250,000 copies a year.\n\nThe success of The Catcher in the Rye led to public attention and scrutiny: Salinger became reclusive, publishing new work less frequently. He followed Catcher with a short story collection, Nine Stories (1953), a collection of a novella and a short story, Franny and Zooey (1961), and a collection of two novellas, Raise High the Roof Beam, Carpenters and Seymour: An Introduction (1963). His last published work, a novella entitled "Hapworth 16, 1924", appeared in The New Yorker on June 19, 1965.\n\nAfterward, Salinger struggled with unwanted attention, including a legal battle in the 1980s with biographer Ian Hamilton and the release in the late 1990s of memoirs written by two people close to him: Joyce Maynard, an ex-lover; and Margaret Salinger, his daughter. In 1996, a small publisher announced a deal with Salinger to publish "Hapworth 16, 1924" in book form, but amid the ensuing publicity, the release was indefinitely delayed. He made headlines around the globe in June 2009, after filing a lawsuit against another writer for copyright infringement resulting from that writer\'s use of one of Salinger\'s characters from The Catcher in the Rye. Salinger died of natural causes on January 27, 2010, at his home in Cornish, New Hampshire.")

a18 = Author.create(fname: "E.B.",
                    mid_name: "",
                    lname: "White",
                    image: File.open('app/assets/images/authors/eb-white.jpg'),
                    description: "Elwyn Brooks White was a leading American essayist, author, humorist, poet and literary stylist and author of such beloved children's classics as Charlotte's Web, Stuart Little, and The Trumpet of the Swan. He graduated from Cornell University in 1921 and, five or six years later, joined the staff of The New Yorker magazine. He authored over seventeen books of prose and poetry and was elected to the American Academy of Arts and Letters in 1973.\n\nWhite always said that he found writing difficult and bad for one's disposition.\n\nMr. White has won countless awards, including the 1971 National Medal for Literature and the Laura Ingalls Wilder Medal, which commended him for making “a substantial and lasting contribution to literature for children.”")

a19 = Author.create(fname: "C.S.",
                    mid_name: "",
                    lname: "Lewis",
                    image: File.open('app/assets/images/authors/cs-lewis.jpg'),
                    description: "CLIVE STAPLES LEWIS (1898–1963) was one of the intellectual giants of the twentieth century and arguably one of the most influential writers of his day. He was a Fellow and Tutor in English Literature at Oxford University until 1954. He was unanimously elected to the Chair of Medieval and Renaissance Literature at Cambridge University, a position he held until his retirement. He wrote more than thirty books, allowing him to reach a vast audience, and his works continue to attract thousands of new readers every year. His most distinguished and popular accomplishments include Mere Christianity, Out of the Silent Planet, The Great Divorce, The Screwtape Letters, and the universally acknowledged classics The Chronicles of Narnia. To date, the Narnia books have sold over 100 million copies and been transformed into three major motion pictures.")



#Sample Author
a16 = Author.create(fname: "",
                    mid_name: "",
                    lname: "",
                    image: File.open('app/assets/images/authors/{ FILE_NAME }'),
                    description: "")


# ____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
# ____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
# Books
Book.destroy_all
b1 = Book.create(title: 'A Game of Thrones',
                 description: "From a master of contemporary fantasy comes the first novel of a landmark series unlike any you’ve ever read before. With A Game of Thrones, George R. R. Martin has launched a genuine masterpiece, bringing together the best the genre has to offer. Mystery, intrigue, romance, and adventure fill the pages of this magnificent saga, the first volume in an epic series sure to delight fantasy fans everywhere.",
                 author_id: Author.find_by_name("George R.R. Martin").id,
                 book_cover: File.open('app/assets/images/book_covers/GOT/a-game-of-thrones.jpg'))

b2 = Book.create(title: 'A Clash of Kings',
                 description: "In this eagerly awaited sequel to A Game of Thrones, George R. R. Martin has created a work of unsurpassed vision, power, and imagination. A Clash of Kings transports us to a world of revelry and revenge, wizardry and warfare unlike any you have ever experienced.",
                 author_id: Author.find_by_name("George R.R. Martin").id,
                 book_cover: File.open('app/assets/images/book_covers/GOT/a-clash-of-kings.jpg'))

b3 = Book.create(title: 'A Storm of Swords',
                 description: "Here is the third volume in George R. R. Martin’s magnificent cycle of novels that includes A Game of Thrones and A Clash of Kings. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.",
                 author_id: Author.find_by_name("George R.R. Martin").id,
                 book_cover: File.open('app/assets/images/book_covers/GOT/a-storm-of-swords.jpg'))

b4 = Book.create(title: 'A Feast for Crows',
                 description: "Few books have captivated the imagination and won the devotion and praise of readers and critics everywhere as has George R. R. Martin’s monumental epic cycle of high fantasy. Now, in A Feast for Crows, Martin delivers the long-awaited fourth book of his landmark series, as a kingdom torn asunder finds itself at last on the brink of peace . . . only to be launched on an even more terrifying course of destruction.",
                 author_id: Author.find_by_name("George R.R. Martin").id,
                 book_cover: File.open('app/assets/images/book_covers/GOT/a-feast-for-crows.jpg'))

b5 = Book.create(title: 'A Dance with Dragons',
                 description: "Dubbed “the American Tolkien” by Time magazine, George R. R. Martin has earned international acclaim for his monumental cycle of epic fantasy. Now the #1 New York Times bestselling author delivers the fifth book in his landmark series—as both familiar faces and surprising new forces vie for a foothold in a fragmented empire. ",
                 author_id: Author.find_by_name("George R.R. Martin").id,
                 book_cover: File.open('app/assets/images/book_covers/GOT/a-dance-with-dragons.jpg'))

b6 = Book.create(title: 'Harry Potter and the Sorcerer\'s Stone',
                 description: "Harry Potter thinks he is an ordinary boy. He lives with his Uncle Vernon, Aunt Petunia and cousin Dudley, who are mean to him and make him sleep in a cupboard under the stairs. (Dudley, however, has two bedrooms, one to sleep in and one for all his toys and games.) Then Harry starts receiving mysterious letters and his life is changed forever. He is whisked away by a beetle-eyed giant of a man and enrolled at Hogwarts School of Witchcraft and Wizardry. The reason: Harry Potter is a wizard! The first book in the \"Harry Potter\" series makes the perfect introduction to the world of Hogwarts.",
                 author_id: Author.find_by_name("J.K. Rowling").id,
                 book_cover: File.open('app/assets/images/book_covers/Harry_Potter/sorcerers-stone.jpg'))

b7 = Book.create(title: 'Harry Potter and the Chamber of Secrets',
                 description: "All Harry Potter wants is to get away from the Dursleys and go back to Hogwarts School for Witchcraft and Wizardry. But just as he's packing his bags, Harry receives a warning from a strange, impish creature named Dobby - who says that if Harry Potter returns to Hogwarts, disaster will strike.\n\nAnd strike it does. For in Harry's second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockheart, a spirit named Moaning Myrtle who haunts the girls' bathroom, and the unwanted attentions of Ron Weasley's younger sister, Ginny.\n\nBut each of these seem minor annoyances when the real trouble begins, and someone--or something--starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects... Harry Potter himself. ",
                 author_id: Author.find_by_name("J.K. Rowling").id,
                 book_cover: File.open('app/assets/images/book_covers/Harry_Potter/chamber-of-secrets.jpg'))

b8 = Book.create(title: 'Harry Potter and the Prisoner of Azkaban',
                 description: "Harry Potter is lucky to reach the age of thirteen, since he has already survived the murderous attacks of the feared Dark Lord on more than one occasion. But his hopes for a quiet term concentrating on Quidditch are dashed when a maniacal mass-murderer escapes from Azkaban, pursued by the soul-sucking Dementors who guard the prison. It's assumed that Hogwarts is the safest place for Harry to be. But is it a coincidence that he can feel eyes watching him in the dark, and should he be taking Professor Trelawney's ghoulish predictions seriously?",
                 author_id: Author.find_by_name("J.K. Rowling").id,
                 book_cover: File.open('app/assets/images/book_covers/Harry_Potter/prisoner-of-azkaban.jpg'))

b9 = Book.create(title: 'Harry Potter and the Goblet of Fire',
                 description: "Harry Potter is midway through both his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup with Hermione, Ron, and the Weasleys. He wants to dream about Cho Chang, his crush (and maybe do more than dream). He wants to find out about the mysterious event that supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn't happened for hundreds of years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he's not normal - even by wizarding standards.\n\nAnd in his case, different can be deadly.",
                 author_id: Author.find_by_name("J.K. Rowling").id,
                 book_cover: File.open('app/assets/images/book_covers/Harry_Potter/goblet-of-fire.jpg'))

b10 = Book.create(title: 'Harry Potter and the Order of the Phoenix',
                 description: "Harry Potter is due to start his fifth year at Hogwarts School of Witchcraft and Wizardry. His best friends Ron and Hermione have been very secretive all summer and he is desperate to get back to school and find out what has been going on. However, what Harry discovers is far more devastating than he could ever have expected...\n\nSuspense, secrets and thrilling action from the pen of J.K. Rowling ensure an electrifying adventure that is impossible to put down.",
                 author_id: Author.find_by_name("J.K. Rowling").id,
                 book_cover: File.open('app/assets/images/book_covers/Harry_Potter/order-of-the-phoenix.jpg'))

b11 = Book.create(title: 'Harry Potter and the Half-Blood Prince',
                 description: "It is the middle of the summer, but there is an unseasonal mist pressing against the windowpanes. Harry Potter is waiting nervously in his bedroom at the Dursleys' house in Privet Drive for a visit from Professor Dumbledore himself. One of the last times he saw the Headmaster was in a fierce one-to-one duel with Lord Voldemort, and Harry can't quite believe that Professor Dumbledore will actually appear at the Dursleys' of all places. Why is the Professor coming to visit him now? What is it that cannot wait until Harry returns to Hogwarts in a few weeks' time? Harry's sixth year at Hogwarts has already got off to an unusual start, as the worlds of Muggle and magic start to intertwine...\n\nJ.K. Rowling charts Harry Potter's latest adventures in his sixth year at Hogwarts with consummate skill and in breathtaking fashion.",
                 author_id: Author.find_by_name("J.K. Rowling").id,
                 book_cover: File.open('app/assets/images/book_covers/Harry_Potter/half-blood-prince.jpg'))

b12 = Book.create(title: 'Harry Potter and the Deathly Hallows',
                  description: "Harry is waiting in Privet Drive. The Order of the Phoenix is coming to escort him safely away without Voldemort and his supporters knowing - if they can. But what will Harry do then? How can he fulfil the momentous and seemingly impossible task that Professor Dumbledore has left him?",
                  author_id: Author.find_by_name("J.K. Rowling").id,
                  book_cover: File.open('app/assets/images/book_covers/Harry_Potter/deathly-hallows.jpg'))

b13 = Book.create(title: 'The Fellowship of the Ring',
                  description: "Frodo Baggins knew the Ringwraiths were searching for him—and the Ring of Power he bore that would enable Sauron to destroy all that was good in Middle-earth. Now it was up to Frodo and his faithful servant Sam to carry the Ring to where it could be destroyed—in the very center of Sauron's dark kingdom.",
                  author_id: Author.find_by_name("J.R.R. Tolkien").id,
                  book_cover: File.open('app/assets/images/book_covers/LOTR/the-fellowship.jpg'))

b14 = Book.create(title: 'The Two Towers',
                  description: "The Fellowship was scattered. Some were bracing hopelessly for war against the ancient evil of Sauron. Some were contending with the treachery of the wizard Saruman. Only Frodo and Sam were left to take the accursed Ring of Power to be destroyed in Mordor–the dark Kingdom where Sauron was supreme. Their guide was Gollum, deceitful and lust-filled, slave to the corruption of the Ring. Thus continues the magnificent, bestselling tale of adventure begun in The Fellowship of the Ring, which reaches its soul-stirring climax in The Return of the King.",
                  author_id: Author.find_by_name("J.R.R. Tolkien").id,
                  book_cover: File.open('app/assets/images/book_covers/LOTR/two-towers.jpg'))

b15 = Book.create(title: 'The Return of the King',
                  description: "The Companions of the Ring have become involved in separate adventures as the quest continues. Aragorn, revealed as the hidden heir of the ancient Kings of the West, joined with the Riders of Rohan against the forces of Isengard, and took part in the desperate victory of the Hornburg. Merry and Pippin, captured by Orcs, escaped into Fangorn Forest and there encountered the Ents. Gandalf returned, miraculously, and defeated the evil wizard, Saruman. Meanwhile, Sam and Frodo progressed towards Mordor to destroy the Ring, accompanied by SmEagol--Gollum, still obsessed by his 'precious'. After a battle with the giant spider, Shelob, Sam left his master for dead; but Frodo is still alive--in the hands of the Orcs. And all the time the armies of the Dark Lord are massing. J.R.R. Tolkien's great work of imaginative fiction has been labeled both a heroic romance and a classic fantasy fiction. By turns comic and homely, epic and diabolic, the narrative moves through countless changes of scene and character in an imaginary world which is totally convincing in its detail.",
                  author_id: Author.find_by_name("J.R.R. Tolkien").id,
                  book_cover: File.open('app/assets/images/book_covers/LOTR/the-return.jpg'))

b16 = Book.create(title: 'Six of Crows',
                  description: "Ketterdam: a bustling hub of international trade where anything can be had for the right price—and no one knows that better than criminal prodigy Kaz Brekker. Kaz is offered a chance at a deadly heist that could make him rich beyond his wildest dreams. But he can't pull it off alone...\n\nA convict with a thirst for revenge.\n\nA sharpshooter who can't walk away from a wager.\n\nA runaway with a privileged past.\n\nA spy known as the Wraith.\n\nA Heartrender using her magic to survive the slums.\n\nA thief with a gift for unlikely escapes.\n\nKaz's crew are the only ones who might stand between the world and destruction—if they don't kill each other first.",
                  author_id: Author.find_by_name("Leigh Bardugo").id,
                  book_cover: File.open('app/assets/images/book_covers/Six_of_Crows/six-of-crows.jpg'))

b17 = Book.create(title: 'Crooked Kingdom',
                  description: "Kaz Brekker and his crew have just pulled off a heist so daring even they didn't think they'd survive. But instead of divvying up a fat reward, they're right back to fighting for their lives. Double-crossed and left crippled by the kidnapping of a valuable team member, the crew is low on resources, allies, and hope. As powerful forces from around the world descend on Ketterdam to root out the secrets of the dangerous drug known as jurda parem, old rivals and new enemies emerge to challenge Kaz's cunning and test the team's fragile loyalties. A war will be waged on the city's dark and twisting streets―a battle for revenge and redemption that will decide the fate of magic in the Grisha world. ",
                  author_id: Author.find_by_name("Leigh Bardugo").id,
                  book_cover: File.open('app/assets/images/book_covers/Six_of_Crows/crooked-kingdom.jpg'))

b18 = Book.create(title: 'Into the Storm',
                  description: "In a remote, frozen corner of New Hampshire, a Navy SEAL team and the elite security experts of Troubleshooters, Incorporated are going head-to-head as fierce but friendly rivals in a raid-and-rescue training exercise. Despite the frigid winter temperatures, tension smolders between veteran SEAL Petty Officer Mark \"Jenk\" Jenkins and former cop turned Troubleshooter Lindsey Fontaine after an impulsive night goes awry. And then, suddenly, Tracy Shapiro, the Troubleshooters' new receptionist, vanishes while playing the role of hostage during a mock rescue operation.\n\nTeaming up with the FBI to launch a manhunt in the treacherous wilderness, Jenk and Lindsey must put aside their feelings as a record snowstorm approaches, dramatically reducing any hope of finding Tracy alive. The trail is colder than the biting New England climate until a lucky break leads to a horrifying discovery--a brutally murdered young woman wearing the jacket Tracy wore when she disappeared. Suddenly there is a chilling certainty that Tracy has fallen prey to a serial killer--one who knows the backwoods terrain and who doesn't play by the rules of engagement.\n\nIn a race against time, a raging blizzard, and a cunning opponent, Jenk and Lindsey are put to the ultimate test. Rising everything, they must finally come together in a desperate attempt to save Tracy--and each other.",
                  author_id: Author.find_by_name("Suzanne Brockmann").id,
                  book_cover: File.open('app/assets/images/book_covers/into-the-storm.jpg'))

b19 = Book.create(title: 'The Da Vinci Code',
                  description: "An ingenious code hidden in the works of Leonardo da Vinci. A desperate race through the cathedrals and castles of Europe. An astonishing truth concealed for centuries . . . unveiled at last.\n\nWhile in Paris, Harvard symbologist Robert Langdon is awakened by a phone call in the dead of the night. The elderly curator of the Louvre has been murdered inside the museum, his body covered in baffling symbols. As Langdon and gifted French cryptologist Sophie Neveu sort through the bizarre riddles, they are stunned to discover a trail of clues hidden in the works of Leonardo da Vinci—clues visible for all to see and yet ingeniously disguised by the painter.\n\nEven more startling, the late curator was involved in the Priory of Sion—a secret society whose members included Sir Isaac Newton, Victor Hugo, and Da Vinci—and he guarded a breathtaking historical secret. Unless Langdon and Neveu can decipher the labyrinthine puzzle—while avoiding the faceless adversary who shadows their every move—the explosive, ancient truth will be lost forever.",
                  author_id: Author.find_by_name("Dan Brown").id,
                  book_cover: File.open('app/assets/images/book_covers/da-vinci-code.jpg'))

b20 = Book.create(title: 'The Hunt for Red October',
                  description: "Here is the runaway bestseller that launched Tom Clancy's phenomenal career. A military thriller so gripping in its action and so convincing in its accuracy that the author was rumored to have been debriefed by the White House. Its theme: the greatest espionage coup in history. Its story: the chase for a top secret Russian missile sub. Lauded by the Washington Post as \"breathlessly exciting.\" The Hunt for Red October remains a masterpiece of military fiction by one of the world's most popular authors, a man whose shockingly realistic scenarios continue to hold us in thrall.\n\nSomewhere under the Atlantic, a Soviet sub commander has just made a fateful decision. The Red October is heading west. The Americans want her. The Russians want her back. And the most incredible chase in history is on...",
                  author_id: Author.find_by_name("Tom Clancy").id,
                  book_cover: File.open('app/assets/images/book_covers/hunt-for-red-october.jpg'))

b21 = Book.create(title: 'Ishmael: An Adventure of the Mind and Spirit',
                  description: "TEACHER SEEKS PUPIL.\n\nMust have an earnest desire to\n\nsave the world. Apply in person.\n\nIt was just a three-line ad in the personals section, but it launched the adventure of a lifetime...\n\nSo begins Ishmael, an utterly unique and captivating novel that has earned a large and passionate following among readers and critics alike—one of the most beloved and bestselling novels of spiritual adventure ever published.",
                  author_id: Author.find_by_name("Daniel Quinn").id,
                  book_cover: File.open('app/assets/images/book_covers/ishmael.jpg'))

b22 = Book.create(title: 'Ender\'s Game',
                  description: "Andrew \"Ender\" Wiggin thinks he is playing computer simulated war games; he is, in fact, engaged in something far more desperate. The result of genetic experimentation, Ender may be the military genius Earth desperately needs in a war against an alien enemy seeking to destroy all human life. The only way to find out is to throw Ender into ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender Wiggin is six years old when it begins. He will grow up fast.\n\nBut Ender is not the only result of the experiment. The war with the Buggers has been raging for a hundred years, and the quest for the perfect general has been underway almost as long. Ender's two older siblings, Peter and Valentine, are every bit as unusual as he is, but in very different ways. While Peter was too uncontrollably violent, Valentine very nearly lacks the capability for violence altogether. Neither was found suitable for the military's purpose. But they are driven by their jealousy of Ender, and by their inbred drive for power. Peter seeks to control the political process, to become a ruler. Valentine's abilities turn more toward the subtle control of the beliefs of commoner and elite alike, through powerfully convincing essays. Hiding their youth and identities behind the anonymity of the computer networks, these two begin working together to shape the destiny of Earth-an Earth that has no future at all if their brother Ender fails.",
                  author_id: Author.find_by_name("Orson Scott Card").id,
                  book_cover: File.open('app/assets/images/book_covers/enders-game.jpg'))

b23 = Book.create(title: 'The Hunger Games',
                  description: "The nation of Panem, formed from a post-apocalyptic North America, is a country that consists of a wealthy Capitol region surrounded by 12 poorer districts. Early in its history, a rebellion led by a 13th district against the Capitol resulted in its destruction and the creation of an annual televised event known as the Hunger Games. In punishment, and as a reminder of the power and grace of the Capitol, each district must yield one boy and one girl between the ages of 12 and 18 through a lottery system to participate in the games. The 'tributes' are chosen during the annual Reaping and are forced to fight to the death, leaving only one survivor to claim victory.\n\nWhen 16-year-old Katniss's young sister, Prim, is selected as District 12's female representative, Katniss volunteers to take her place. She and her male counterpart Peeta, are pitted against bigger, stronger representatives, some of whom have trained for this their whole lives. , she sees it as a death sentence. But Katniss has been close to death before. For her, survival is second nature.",
                  author_id: Author.find_by_name("Suzanne Collins").id,
                  book_cover: File.open('app/assets/images/book_covers/The_Hunger_Games/the-hunger-games.jpg'))

b24 = Book.create(title: 'Catching Fire',
                  description: "Against all odds, Katniss has won the Hunger Games. She and fellow District 12 tribute Peeta Mellark are miraculously still alive. Katniss should be relieved, happy even. After all, she has returned to her family and her longtime friend, Gale. Yet nothing is the way Katniss wishes it to be. Gale holds her at an icy distance. Peeta has turned his back on her completely. And there are whispers of a rebellion against the Capitol - a rebellion that Katniss and Peeta may have helped create.\n\nMuch to her shock, Katniss has fueled an unrest she's afraid she cannot stop. And what scares her even more is that she's not entirely convinced she should try. As time draws near for Katniss and Peeta to visit the districts on the Capitol's cruel Victory Tour, the stakes are higher than ever. If they can't prove, without a shadow of a doubt, that they are lost in their love for each other, the consequences will be horrifying.\n\nIn Catching Fire, the second novel in the Hunger Games trilogy, Suzanne Collins continues the story of Katniss Everdeen, testing her more than ever before...and surprising readers at every turn.",
                  author_id: Author.find_by_name("Suzanne Collins").id,
                  book_cover: File.open('app/assets/images/book_covers/The_Hunger_Games/catching-fire.jpg'))

b25 = Book.create(title: 'Mockingjay',
                  description: "Katniss Everdeen, girl on fire, has survived, even though her home has been destroyed. Gale has escaped. Katniss's family is safe. Peeta has been captured by the Capitol. District 13 really does exist. There are rebels. There are new leaders. A revolution is unfolding.\n\nIt is by design that Katniss was rescued from the arena in the cruel and haunting Quarter Quell, and it is by design that she has long been part of the revolution without knowing it. District 13 has come out of the shadows and is plotting to overthrow the Capitol. Everyone, it seems, has had a hand in the carefully laid plans--except Katniss.\n\nThe success of the rebellion hinges on Katniss's willingness to be a pawn, to accept responsibility for countless lives, and to change the course of the future of Panem. To do this, she must put aside her feelings of anger and distrust. She must become the rebels' Mockingjay--no matter what the personal cost.",
                  author_id: Author.find_by_name("Suzanne Collins").id,
                  book_cover: File.open('app/assets/images/book_covers/The_Hunger_Games/mockingjay.jpg'))

b26 = Book.create(title: 'To Kill a Mockingbird',
                  description: "The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.\n\nCompassionate, dramatic, and deeply moving, To Kill A Mockingbird takes readers to the roots of human behavior—to innocence and experience, kindness and cruelty, love and hatred, humor and pathos. Now with over 18 million copies in print and translated into forty languages, this regional story by a young Alabama woman claims universal appeal. Harper Lee always considered her book to be a simple love story. Today it is regarded as a masterpiece of American literature.",
                  author_id: Author.find_by_name("Harper Lee").id,
                  book_cover: File.open('app/assets/images/book_covers/kill-mockingbird.jpg'))

b27 = Book.create(title: 'The Great Gatsby',
                  description: "THE GREAT GATSBY, F. Scott Fitzgerald’s third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted \“gin was the national drink and sex the national obsession,\” it is an exquisitely crafted tale of America in the 1920s.\n\nThe Great Gatsby is one of the great classics of twentieth-century literature.",
                  author_id: Author.find_by_name("F. Scott Fitzgerald").id,
                  book_cover: File.open('app/assets/images/book_covers/great-gatsby.jpg'))

b28 = Book.create(title: 'The Lord of the Flies',
                  description: "When a plane crashes on a remote island, a small group of schoolboys are the sole survivors. From the prophetic Simon and virtuous Ralph to the lovable Piggy and brutish Jack, each of the boys attempts to establish control as the reality - and brutal savagery - of their situation sets in.\n\nThe boys' struggle to find a way of existing in a community with no fixed boundaries invites readers to evaluate the concepts involved in social and political constructs and moral frameworks. Ideas of community, leadership, and the rule of law are called into question as the reader has to consider who has a right to power, why, and what the consequences of the acquisition of power may be. Often compared to Catcher in the Rye, Lord of the Flies also represents a coming-of-age story of innocence lost.",
                  author_id: Author.find_by_name("William Golding").id,
                  book_cover: File.open('app/assets/images/book_covers/lord-of-the-flies.jpg'))

b29 = Book.create(title: 'The Girl with the Dragon Tattoo',
                  description: "Mikael Blomkvist, a once-respected financial journalist, watches his professional life rapidly crumble around him. Prospects appear bleak until an unexpected (and unsettling) offer to resurrect his name is extended by an old-school titan of Swedish industry. The catch—and there's always a catch—is that Blomkvist must first spend a year researching a mysterious disappearance that has remained unsolved for nearly four decades. With few other options, he accepts and enlists the help of investigator Lisbeth Salander, a misunderstood genius with a cache of authority issues. Little is as it seems in Larsson's novel, but there is at least one constant: you really don't want to mess with the girl with the dragon tattoo.",
                  author_id: Author.find_by_name("Stieg Larsson").id,
                  book_cover: File.open('app/assets/images/book_covers/Dragon_Tattoo/girl-with-the-dragon-tattoo.jpg'))

b30 = Book.create(title: 'The Girl Who Played with Fire',
                  description: "Mikael Blomkvist, crusading journalist and publisher of the magazine Millennium, has decided to run a story that will expose an extensive sex trafficking operation between Eastern Europe and Sweden, implicating well-known and highly placed members of Swedish society, business, and government.\n\nBut he has no idea just how explosive the story will be until, on the eve of publication, the two investigating reporters are murdered. And even more shocking for Blomkvist: the fingerprints found on the murder weapon belong to Lisbeth Salander—the troubled, wise-beyond-her-years genius hacker who came to his aid in The Girl with the Dragon Tattoo, and who now becomes the focus and fierce heart of The Girl Who Played with Fire.\n\nAs Blomkvist, alone in his belief in Salander’s innocence, plunges into an investigation of the slayings, Salander herself is drawn into a murderous hunt in which she is the prey, and which compels her to revisit her dark past in an effort to settle with it once and for all.",
                  author_id: Author.find_by_name("Stieg Larsson").id,
                  book_cover: File.open('app/assets/images/book_covers/Dragon_Tattoo/girl-who-played-with-fire.jpg'))

b31 = Book.create(title: 'The Girl Who Kicked the Hornet\'s Nest',
                  description: "The stunning third and final novel in Stieg Larsson's internationally best-selling trilogy.\n\nLisbeth Salander - the heart of Larsson's two previous novels - lies in critical condition, a bullet wound to her head, in the intensive care unit of a Swedish city hospital. She's fighting for her life in more ways than one: if and when she recovers, she'll be taken back to Stockholm to stand trial for three murders. With the help of her friend, journalist Mikael Blomkvist, she will not only have to prove her innocence, but also identify and denounce those in authority who have allowed the vulnerable, like herself, to suffer abuse and violence. And, on her own, she will plot revenge - against the man who tried to kill her, and the corrupt government institutions that very nearly destroyed her life.\n\nOnce upon a time, she was a victim. Now Salander is fighting back.",
                  author_id: Author.find_by_name("Stieg Larsson").id,
                  book_cover: File.open('app/assets/images/book_covers/Dragon_Tattoo/the-girl-who-kicked-the-hornets-nest.jpg'))

b32 = Book.create(title: 'Don Quixote',
                  description: "Don Quixote has become so entranced by reading chivalric romances, that he determines to become a knight-errant himself. In the company of his faithful squire, Sancho Panza, his exploits blossom in all sorts of wonderful ways. While Quixote's fancy often leads him astray – he tilts at windmills, imagining them to be giants – Sancho acquires cunning and a certain sagacity. Sane madman and wise fool, they roam the world together, and together they have haunted readers' imaginations for nearly four hundred years.\n\nWith its experimental form and literary playfulness, Don Quixote generally has been recognized as the first modern novel. The book has had enormous influence on a host of writers, from Fielding and Sterne to Flaubert, Dickens, Melville, and Faulkner, who reread it once a year, \"just as some people read the Bible.\"",
                  author_id: Author.find_by_name("Miguel de Cervantes Saavedra").id,
                  book_cover: File.open('app/assets/images/book_covers/quijote.jpg'))

b33 = Book.create(title: 'A Tale of Two Cities',
                  description: "'Liberty, equality, fraternity, or death; -- the last, much the easiest to bestow, O Guillotine!' \n\nAfter eighteen years as a political prisoner in the Bastille, the ageing Doctor Manette is finally released and reunited with his daughter in England. There the lives of two very different men, Charles Darnay, an exiled French aristocrat, and Sydney Carton, a disreputable but brilliant English lawyer, become enmeshed through their love for Lucie Manette. From the tranquil roads of London, they are drawn against their will to the vengeful, bloodstained streets of Paris at the height of the Reign of Terror, and they soon fall under the lethal shadow of La Guillotine.\n\nThis edition uses the text as it appeared in its serial publication in 1859 to convey the full scope of Dickens's vision, and includes the original illustrations by H. K. Browne ('Phiz'). Richard Maxwell's introduction discusses the intricate interweaving of epic drama with personal tragedy.",
                  author_id: Author.find_by_name("Charles Dickens").id,
                  book_cover: File.open('app/assets/images/book_covers/tale-of-two-cities.jpg'))

b34 = Book.create(title: 'A Christmas Carol',
                  description: "Scrooge, the most miserly of all misers, is shown the true meaning of Christmas by four ghostly visitors - his partner Marley, and the ghosts of Christmas Past, Christmas Present and Christmas Yet To Come. \n\nBy Christmas day, he has learnt his lesson and is willing to enter into the spirit of things.\n\nJoan Collins retells the story 'in simple language'.",
                  author_id: Author.find_by_name("Charles Dickens").id,
                  book_cover: File.open('app/assets/images/book_covers/christmas-carol.jpg'))

b35 = Book.create(title: 'Oliver Twist',
                  description: "'Let him feel that he is one of us; once fill his mind with the idea that he has been a thief, and he's ours, - ours for his life!' \n\nThe story of the orphan Oliver, who runs away from the workhouse only to be taken in by a den of thieves, shocked readers when it was first published. Dickens's tale of childhood innocence beset by evil depicts the dark criminal underworld of a London peopled by vivid and memorable characters — the arch-villain Fagin, the artful Dodger, the menacing Bill Sikes and the prostitute Nancy. Combining elements of Gothic Romance, the Newgate Novel and popular melodrama, in Oliver Twist Dickens created an entirely new kind of fiction, scathing in its indictment of a cruel society, and pervaded by an unforgettable sense of threat and mystery.\n\nThis is the first critical edition to use the serial text of 1837-9, presenting Oliver Twist as it appeared to its earliest readers. It includes Dickens's 1841 introduction and 1850 preface, the original illustrations and a glossary of contemporary slang.",
                  author_id: Author.find_by_name("Charles Dickens").id,
                  book_cover: File.open('app/assets/images/book_covers/oliver-twist.jpg'))

b36 = Book.create(title: 'David Copperfield',
                  description: "David Copperfield is the story of a young man’s adventures on his journey from an unhappy & impoverished childhood to the discovery of his vocation as a successful novelist. Among the gloriously vivid cast of characters he encounters are his tyrannical stepfather, Mr Murdstone; his formidable aunt, Betsey Trotwood; the eternally humble yet treacherous Uriah Heep; frivolous, enchanting Dora; & the magnificently impecunious Micawber, one of literature’s great comic creations.\n\nIn David Copperfield—the novel he described as his “favorite child”—Dickens drew revealingly on his own experiences to create one of his most exuberant & enduringly popular works, filled with tragedy & comedy in equal measure.\n\nOriginally published as a monthly serial, from 4/1849 to 11/1850.",
                  author_id: Author.find_by_name("Charles Dickens").id,
                  book_cover: File.open('app/assets/images/book_covers/david-copperfield.jpg'))

b37 = Book.create(title: 'The Hobbit',
                  description: "In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.\n\nWritten for J.R.R. Tolkien’s own children, The Hobbit met with instant critical acclaim when it was first published in 1937. Now recognized as a timeless classic, this introduction to the hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth recounts of the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent. The text in this 372-page paperback edition is based on that first published in Great Britain by Collins Modern Classics (1998), and includes a note on the text by Douglas A. Anderson (2001). Unforgettable!",
                  author_id: Author.find_by_name("J.R.R. Tolkien").id,
                  book_cover: File.open('app/assets/images/book_covers/LOTR/hobbit.jpg'))

b38 = Book.create(title: 'The Catcher in the Rye',
                  description: "\"...the first thing you'll probably want to know is where I was born and what my lousy childhood was like, and how my parents were occupied and all before they had me, and all that David Copperfield kind of crap, but I don\'t feel like going into it, if you want to know the truth. In the first place, that stuff bores me, and in the second place, my parents would have about two hemorrhages apiece if I told anything pretty personal about them.\"\n\nSince his debut in 1951 as The Catcher in the Rye, Holden Caulfield has been synonymous with \"cynical adolescent.\" Holden narrates the story of a couple of days in his sixteen-year-old life, just after he\'s been expelled from prep school, in a slang that sounds edgy even today and keeps this novel on banned book lists. His constant wry observations about what he encounters, from teachers to phonies (the two of course are not mutually exclusive) capture the essence of the eternal teenage experience of alienation.",
                  author_id: Author.find_by_name("J.D. Salinger").id,
                  book_cover: File.open('app/assets/images/book_covers/catcher-in-the-rye.jpg'))

b39 = Book.create(title: 'Charlotte\'s Web',
                  description: "This beloved book by E. B. White, author of Stuart Little and The Trumpet of the Swan, is a classic of children's literature that is \"just about perfect.\"\n\nSome Pig. Humble. Radiant. These are the words in Charlotte's Web, high up in Zuckerman's barn. Charlotte's spiderweb tells of her feelings for a little pig named Wilbur, who simply wants a friend. They also express the love of a girl named Fern, who saved Wilbur's life when he was born the runt of his litter.\n\nE. B. White's Newbery Honor Book is a tender novel of friendship, love, life, and death that will continue to be enjoyed by generations to come. This edition contains color illustrations by Garth Williams, the acclaimed illustrator of E.B. White's Stuart Little and Laura Ingalls Wilder's Little House series, among many other books.",
                  author_id: Author.find_by_name("E.B. White").id,
                  book_cover: File.open('app/assets/images/book_covers/charlottes-web.jpg'))

  # TODO Start here
b40 = Book.create(title: "The Magician's Nephew",
                  description: "When Digory and Polly are tricked by Digory's peculiar Uncle Andrew into becoming part of an experiment, they set off on the adventure of a lifetime. What happens to the children when they touch Uncle Andrew's magic rings is far beyond anything even the old magician could have imagined.\n\nHurtled into the Wood between the Worlds, the children soon find that they can enter many worlds through the mysterious pools there. In one world they encounter the evil Queen Jadis, who wreaks havoc in the streets of London when she is accidentally brought back with them. When they finally manage to pull her out of London, unintentionally taking along Uncle Andrew and a coachman with his horse, they find themselves in what will come to be known as the land of Narnia.",
                  author_id: Author.find_by_name("C.S. Lewis").id,
                  book_cover: File.open('app/assets/images/book_covers/Narnia/magicians-nephew.jpg'))

b41 = Book.create(title: "The Lion, the Witch, and the Wardrobe",
                  description: "'They say Aslan is on the move. Perhaps he has already landed,' whispered the Beaver. Edmund felt a sensation of mysterious horror. Peter felt brave and adventurous. Susan felt as if some delightful strain of music had just floated by. And Lucy got that feeling when you realize it's the beginning of summer. So, deep in the bewitched land of Narnia, the adventure begins.\n\nThey opened a door and entered a world--Narnia--the land beyond the wardrobe, the secret country known only to Peter, Susan, Edmund, and Lucy. Lucy is the first to stumble through the back of the enormous wardrobe in the professor's mysterious old country house, discovering the magic world beyond. At first, no one believes her. But soon Edmund, Peter and Susan, too, discover the magic and meet Aslan, the Great Lion, for themselves. And in the blink of an eye, they are changed forever.",
                  author_id: Author.find_by_name("C.S. Lewis").id,
                  book_cover: File.open('app/assets/images/book_covers/Narnia/lion-witch-wardrobe.jpg'))

b42 = Book.create(title: "The Horse and His Boy",
                  description: "The Horse and his Boy is a stirring and dramatic fantasy story that finds a young boy named Shasta on the run from his homeland with the talking horse, Bree. When the pair discover a deadly plot by the Calormen people to conquer the land of Narnia, the race is on to warn the inhabitants of the impending danger and to rescue them all from certain death.",
                  author_id: Author.find_by_name("C.S. Lewis").id,
                  book_cover: File.open('app/assets/images/book_covers/Narnia/horse-and-his-boy.jpg'))

b43 = Book.create(title: "Prince Caspian",
                  description: "The Pevensie siblings are back to help a prince denied his rightful throne as he gathers an army in a desperate attempt to rid his land of a false king. But in the end, it is a battle of honor between two men alone that will decide the fate of an entire world.",
                  author_id: Author.find_by_name("C.S. Lewis").id,
                  book_cover: File.open('app/assets/images/book_covers/Narnia/prince-caspian.jpg'))

b44 = Book.create(title: "The Voyage of the Dawn Treader",
                  description: "",
                  author_id: Author.find_by_name("C.S. Lewis").id,
                  book_cover: File.open('app/assets/images/book_covers/Narnia/voyage-of-the-dawn-treader.jpg'))

b45 = Book.create(title: "The Silver Chair",
                  description: "",
                  author_id: Author.find_by_name("C.S. Lewis").id,
                  book_cover: File.open('app/assets/images/book_covers/Narnia/silver-chair.jpg'))

b46 = Book.create(title: "The Last Battle",
                  description: "",
                  author_id: Author.find_by_name("C.S. Lewis").id,
                  book_cover: File.open('app/assets/images/book_covers/Narnia/last-battle.jpg'))


# SAMPLE BOOK
b41 = Book.create(title: "",
                  description: "",
                  author_id: Author.find_by_name("").id,
                  book_cover: File.open('app/assets/images/book_covers/{ FILE_NAME }'))
