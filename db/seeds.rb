
# Users
User.destroy_all
guest = User.create(username: 'Guest', password: 'password');
u1 = User.create(username: 'Billy', password: 'password');
u2 = User.create(username: 'Sally', password: 'password');
u3 = User.create(username: 'Sarah', password: 'password');
u4 = User.create(username: 'John', password: 'password');
u5 = User.create(username: 'Michelle', password: 'password');

s1 = Bookshelf.create(title: "All", description: "A collection of all your books!", user_id: guest.id)
s2 = Bookshelf.create(title: "Read", description: "All the books you have read.", user_id: guest.id)
s3 = Bookshelf.create(title: "Want to Read", description: "All the books you would like to read.", user_id: guest.id)
s4 = Bookshelf.create(title: "Currently Reading", description: "Books you are currently enjoying", user_id: guest.id)

s5 = Bookshelf.create(title: "All", description: "A collection of all your books!", user_id: u1.id)
s6 = Bookshelf.create(title: "Read", description: "All the books you have read.", user_id: u1.id)
s7 = Bookshelf.create(title: "Want to Read", description: "All the books you would like to read.", user_id: u1.id)
s8 = Bookshelf.create(title: "Currently Reading", description: "Books you are currently enjoying", user_id: u1.id)

s9 = Bookshelf.create(title: "All", description: "A collection of all your books!", user_id: u2.id)
s10 = Bookshelf.create(title: "Read", description: "All the books you have read.", user_id: u2.id)
s11 = Bookshelf.create(title: "Want to Read", description: "All the books you would like to read.", user_id: u2.id)
s12 = Bookshelf.create(title: "Currently Reading", description: "Books you are currently enjoying", user_id: u2.id)

s13 = Bookshelf.create(title: "All", description: "A collection of all your books!", user_id: u3.id)
s14 = Bookshelf.create(title: "Read", description: "All the books you have read.", user_id: u3.id)
s15 = Bookshelf.create(title: "Want to Read", description: "All the books you would like to read.", user_id: u3.id)
s16 = Bookshelf.create(title: "Currently Reading", description: "Books you are currently enjoying", user_id: u3.id)

s17 = Bookshelf.create(title: "All", description: "A collection of all your books!", user_id: u4.id)
s18 = Bookshelf.create(title: "Read", description: "All the books you have read.", user_id: u4.id)
s19 = Bookshelf.create(title: "Want to Read", description: "All the books you would like to read.", user_id: u4.id)
s20 = Bookshelf.create(title: "Currently Reading", description: "Books you are currently enjoying", user_id: u4.id)

s21 = Bookshelf.create(title: "All", description: "A collection of all your books!", user_id: u5.id)
s22 = Bookshelf.create(title: "Read", description: "All the books you have read.", user_id: u5.id)
s23 = Bookshelf.create(title: "Want to Read", description: "All the books you would like to read.", user_id: u5.id)
s24 = Bookshelf.create(title: "Currently Reading", description: "Books you are currently enjoying", user_id: u5.id)

# ____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
# ____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________
# Authors
Author.destroy_all
a1 = Author.create(fname: "George R.R.",
                   lname: "Martin",
                   image: File.open('app/assets/images/authors/george-rr-martin.jpg'),
                   description: "George R. R. Martin was born September 20, 1948, in Bayonne, New Jersey. His father was Raymond Collins Martin, a longshoreman, and his mother was Margaret Brady Martin. He has two sisters, Darleen Martin Lapinski and Janet Martin Patten.")

a2 = Author.create(fname: "J.K.",
                   lname: "Rowling",
                   image: File.open('app/assets/images/authors/jk-rowling.jpg'),
                   description: "Although she writes under the pen name J.K. Rowling, pronounced like rolling, her name when her first Harry Potter book was published was simply Joanne Rowling. Anticipating that the target audience of young boys might not want to read a book written by a woman, her publishers demanded that she use two initials, rather than her full name. As she had no middle name, she chose K as the second initial of her pen name, from her paternal grandmother Kathleen Ada Bulgen Rowling. She calls herself Jo and has said, \"No one ever called me 'Joanne' when I was young, unless they were angry.\" Following her marriage, she has sometimes used the name Joanne Murray when conducting personal business. During the Leveson Inquiry she gave evidence under the name of Joanne Kathleen Rowling. In a 2012 interview, Rowling noted that she no longer cared that people pronounced her name incorrectly.")

a3 = Author.create(fname: 'J.R.R.',
                   lname: 'Tolkien',
                   image: File.open('app/assets/images/authors/jrr-tolkien.jpg'),
                   description: "John Ronald Reuel Tolkien, CBE, was an English writer, poet, WWI veteran (a First Lieutenant in the Lancashire Fusiliers, British Army), philologist, and university professor, best known as the author of the high fantasy classic works The Hobbit and The Lord of the Rings.\n\nTolkien was Rawlinson and Bosworth Professor of Anglo-Saxon at Oxford from 1925 to 1945, and Merton Professor of English language and literature from 1945 to 1959. He was a close friend of C.S. Lewis.\n\nChristopher Tolkien published a series of works based on his father\'s extensive notes and unpublished manuscripts, including The Silmarillion . These, together with The Hobbit and The Lord of the Rings, form a connected body of tales, poems, fictional histories, invented languages, and literary essays about an imagined world called Arda, and Middle-earth within it. Between 1951 and 1955, Tolkien applied the word \"legendarium\" to the larger part of these writings.")

a4 = Author.create(fname: 'Leigh',
                   lname: 'Bardugo',
                   image: File.open('app/assets/images/authors/leigh-bardugo.jpg'),
                   description: "Leigh Bardugo is the New York Times and USA Today bestselling author of the Grisha Trilogy (Shadow and Bone, Siege and Storm, and Ruin and Rising).\n\nShe was born in Jerusalem, grew up in Los Angeles, and graduated from Yale University, and has worked in advertising, journalism, and most recently, makeup and special effects. These days, she’s lives and writes in Hollywood where she can occasionally be heard singing with her band. Her new book, Six of Crows, arrives fall 2015.")

a5 = Author.create(fname: 'Suzanne',
                   lname: 'Brockmann',
                   image: File.open('app/assets/images/authors/suzanne-brockmann.jpg'),
                   description: "Suzanne Brockmann was born in 1960. Married with Ed Gaffney, a lawyer and published writer. They have two grown children: Melanie, who is a personal trainer and author, and Jason, who is an actor and tap dancer. They divide their time between Boston, Massachusetts, Sarasota, Florida and New York City.\n\nPublished since 1993, Suzanne is widely recognized as one of the leading voices in suspense romance genre. She has been on the USA Today and New York Times bestseller lists and has received many awards including being named Romance Writers of America’s #1 Favorite Book of the Year three times. She has also received two RITAs and Romantic Times Reviewers’ Choice Awards.\n\nWhen Suzanne isn't writing, she's busy making music. Formerly the lead singer and songwriter for an original Boston rock band, she is now vocal arranger, director, and lead alto of the eight-voice a cappella group Serious Fun. She is one of the founders and volunteer organizers of Natick's Appalachian Benefit Coffeehouse, raising money for the Cabell/Lincoln Country Workcamp, which rebuilds housing for the poor, elderly and disabled in West Virginia. She is a proud member of PFLAG -- Parents, Families and Friends of Lesbians and Gays. She is also a card-carrying member of the American Civil Liberties Union, the Human Rights Campaign, and MassEquality. A firm believer in civil rights for all people, she has fought hard to bring equal marriage rights to all citizens of her home state, Massachusetts. ")

a6 = Author.create(fname: 'Dan',
                   lname: 'Brown',
                   image: File.open('app/assets/images/authors/dan-brown.jpg'),
                   description: "Dan Brown is the author of numerous #1 bestselling novels, including The Da Vinci Code, which has become one of the best selling novels of all time as well as the subject of intellectual debate among readers and scholars. Brown’s novels are published in 52 languages around the world with 200 million copies in print.\n\nIn 2005, Brown was named one of the 100 Most Influential People in the World by TIME Magazine, whose editors credited him with “keeping the publishing industry afloat; renewed interest in Leonardo da Vinci and early Christian history; spiking tourism to Paris and Rome; a growing membership in secret societies; the ire of Cardinals in Rome; eight books denying the claims of the novel and seven guides to read along with it; a flood of historical thrillers; and a major motion picture franchise.”\n\nThe son of a mathematics teacher and a church organist, Brown was raised on a prep school campus where he developed a fascination with the paradoxical interplay between science and religion. These themes eventually formed the backdrop for his books. He is a graduate of Amherst College and Phillips Exeter Academy, where he later returned to teach English before focusing his attention full time to writing.\n\nBrown is currently at work on a new book as well as the Columbia Pictures film version of his most recent novel.")

a7 = Author.create(fname: 'Tom',
                   lname: 'Clancy',
                   image: File.open('app/assets/images/authors/tom-clancy.jpg'),
                   description: "Tom Clancy was an English major at Baltimore’s Loyola College. As a Maryland insurance broker with a passion for naval history, his dream of writing a novel came true with his first effort, The Hunt for Red October (1984).\n\nHe since wrote more than a dozen novels, which have a blend of realism and authenticity, intricate plotting, and razor-sharp suspense. Ten of the novels, including The Teeth of the Tiger (Berkley, 2004), feature the character Jack Ryan, former stock broker and CIA employee.\n\nClancy’s non-fiction works include a series of guided tours of America’s warfighting assets, Submarine, Armored Cav, Fighter Wing, Marine, and Airborne.\n\nHe lived in Maryland.")

a8 = Author.create(fname: 'Daniel',
                   lname: 'Quinn',
                   image: File.open('app/assets/images/authors/daniel-quinn.jpg'),
                   description: "I had and did the usual things -- childhood, schools, universities (St. Louis, Vienna, Loyola of Chicago), then embarked on a career in publishing in Chicago. Within a few years I was the head of the Biography & Fine Arts Department of the American Peoples Encyclopedia; when that was subsumed by a larger outfit and moved to New York, I stayed behind and moved into educational publishing, beginning at Science Research Associates (a division of IBM) and ending as Editorial Director of The Society for Vision Education (a division of the Singer Corporation).\n\nIn 1977 I walked away from SVE and this very successful career when it became clear that I was not going to able to do there what I really wanted to do...which was not entirely clear. A few months later I set my feet on a path that would change my life completely. It was a path made up of books -- or rather versions of a book that, after twelve years, would turn out to be ISHMAEL.")

a9 = Author.create(fname: 'Orson Scott',
                   lname: 'Card',
                   image: File.open('app/assets/images/authors/orson-scott-card.jpg'),
                   description: "Orson Scott Card is the author of the novels Ender's Game, Ender's Shadow, and Speaker for the Dead, which are widely read by adults and younger readers, and are increasingly used in schools.\n\nBesides these and other science fiction novels, Card writes contemporary fantasy (Magic Street, Enchantment, Lost Boys), biblical novels (Stone Tables, Rachel and Leah), the American frontier fantasy series The Tales of Alvin Maker (beginning with Seventh Son), poetry (An Open Book), and many plays and scripts.\n\nCard was born in Washington and grew up in California, Arizona, and Utah. He served a mission for the LDS Church in Brazil in the early 1970s. Besides his writing, he teaches occasional classes and workshops and directs plays. He recently began a longterm position as a professor of writing and literature at Southern Virginia University.\n\nCard currently lives in Greensboro, North Carolina, with his wife, Kristine Allen Card, and their youngest child, Zina Margaret.")

a10 = Author.create(fname: 'Suzanne',
                    lname: 'Collins',
                    image: File.open('app/assets/images/authors/suzanne-collins.jpg'),
                    description: "Since 1991, Suzanne Collins has been busy writing for children’s television. She has worked on the staffs of several Nickelodeon shows, including the Emmy-nominated hit Clarissa Explains it All and The Mystery Files of Shelby Woo. For preschool viewers, she penned multiple stories for the Emmy-nominated Little Bear and Oswald. She also co-wrote the critically acclaimed Rankin/Bass Christmas special, Santa, Baby! Most recently she was the Head Writer for Scholastic Entertainment’s Clifford’s Puppy Days.\n\nWhile working on a Kids WB show called Generation O! she met children’s author James Proimos, who talked her into giving children’s books a try.\n\nThinking one day about Alice in Wonderland, she was struck by how pastoral the setting must seem to kids who, like her own, lived in urban surroundings. In New York City, you’re much more likely to fall down a manhole than a rabbit hole and, if you do, you’re not going to find a tea party. What you might find...? Well, that’s the story of Gregor the Overlander, the first book in her five-part series, The Underland Chronicles. Suzanne also has a rhyming picture book illustrated by Mike Lester entitled When Charlie McButton Lost Power.\n\nShe currently lives in Connecticut with her family and a pair of feral kittens they adopted from their backyard.")

a11 = Author.create(fname: 'Harper',
                    lname: 'Lee',
                    image: File.open('app/assets/images/authors/harper-lee.jpg'),
                    description: "Harper Lee, known as Nelle, was born in the Alabama town of Monroeville, the youngest of four children of Amasa Coleman Lee and Frances Cunningham Finch Lee. Her father, a former newspaper editor and proprietor, was a lawyer who served on the state legislature from 1926 to 1938. As a child, Lee was a tomboy and a precocious reader, and enjoyed the friendship of her schoolmate and neighbor, the young Truman Capote.\n\nAfter graduating from high school in Monroeville, Lee enrolled at the all-female Huntingdon College in Montgomery (1944-45), and then pursued a law degree at the University of Alabama (1945-50), pledging the Chi Omega sorority. While there, she wrote for several student publications and spent a year as editor of the campus humor magazine, \"Ramma-Jamma\". Though she did not complete the law degree, she studied for a summer in Oxford, England, before moving to New York in 1950, where she worked as a reservation clerk with Eastern Air Lines and BOAC.\n\nLee continued as a reservation clerk until the late 50s, when she devoted herself to writing. She lived a frugal life, traveling between her cold-water-only apartment in New York to her family home in Alabama to care for her father.\n\nHaving written several long stories, Harper Lee located an agent in November 1956. The following month at the East 50th townhouse of her friends Michael Brown and Joy Williams Brown, she received a gift of a year's wages with a note: \"You have one year off from your job to write whatever you please. Merry Christmas.\"\n\nWithin a year, she had a first draft. Working with J. B. Lippincott & Co. editor Tay Hohoff, she completed To Kill a Mockingbird in the summer of 1959. Published July 11, 1960, the novel was an immediate bestseller and won great critical acclaim, including the Pulitzer Prize for Fiction in 1961. It remains a bestseller with more than 30 million copies in print. In 1999, it was voted \"Best Novel of the Century\" in a poll by the Library Journal.")

a12 = Author.create(fname: 'F. Scott',
                    lname: 'Fitzgerald',
                    image: File.open('app/assets/images/authors/f-scott-fitzgerald.jpg'),
                    description: "Francis Scott Key Fitzgerald was an American writer of novels and short stories, whose works have been seen as evocative of the Jazz Age, a term he himself allegedly coined. He is regarded as one of the greatest twentieth century writers. Fitzgerald was of the self-styled \"Lost Generation,\" Americans born in the 1890s who came of age during World War I. He finished four novels, left a fifth unfinished, and wrote dozens of short stories that treat themes of youth, despair, and age. He was married to Zelda Fitzgerald.")

a13 = Author.create(fname: 'William',
                    lname: 'Golding',
                    image: File.open('app/assets/images/authors/william-golding.jpg'),
                    description: "Sir William Gerald Golding was a British novelist, poet, and playwright best known for his 1954 novel Lord of the Flies. He was awarded the Booker Prize for literature in 1980 for his novel Rites of Passage, the first book of the trilogy To the Ends of the Earth. He was awarded the Nobel Prize for Literature in 1983 and was knighted in 1988.\n\nIn 2008, The Times ranked Golding third on their list of \"The 50 greatest British writers since 1945\".")

a14 = Author.create(fname: 'Stieg',
                    lname: 'Larsson',
                    image: File.open('app/assets/images/authors/stieg-larsson.jpg'),
                    description: "Stieg Larsson \\(born as Karl Stig-Erland Larsson\\) was a Swedish journalist and writer who passed away in 2004.\n\nAs a journalist and editor of the magazine Expo , Larsson was active in documenting and exposing Swedish extreme right and racist organisations. When he died at the age of 50, Larsson left three unpublished thrillers and unfinished manuscripts for more. The first three books \\( The Girl With the Dragon Tattoo , The Girl Who Played With Fire and The Girl Who Kicked the Hornets' Nest \\) have since been printed as the Millenium series. These books are all bestsellers in Sweden and in several other countries, including the United States and Canada.")

a15 = Author.create(fname: 'Miguel de Cervantes',
                    lname: 'Saavedra',
                    image: File.open('app/assets/images/authors/miguel-saavedra.jpg'),
                    description: "Miguel de Cervantes Saavedra was a Spanish novelist, poet, and playwright. His novel Don Quixote is often considered his magnum opus, as well as the first modern novel.\n\nIt is assumed that Miguel de Cervantes was born in Alcalá de Henares. His father was Rodrigo de Cervantes, a surgeon of cordoban descent. Little is known of his mother Leonor de Cortinas, except that she was a native of Arganda del Rey.\n\nIn 1569, Cervantes moved to Italy, where he served as a valet to Giulio Acquaviva, a wealthy priest who was elevated to cardinal the next year. By then, Cervantes had enlisted as a soldier in a Spanish Navy infantry regiment and continued his military life until 1575, when he was captured by Algerian corsairs. He was then released on ransom from his captors by his parents and the Trinitarians, a Catholic religious order. He subsequently returned to his family in Madrid.\n\nIn Esquivias (Province of Toledo), on 12 December 1584, he married the much younger Catalina de Salazar y Palacios (Toledo, Esquivias –, 31 October 1626), daughter of Fernando de Salazar y Vozmediano and Catalina de Palacios. Her uncle Alonso de Quesada y Salazar is said to have inspired the character of Don Quixote. During the next 20 years Cervantes led a nomadic existence, working as a purchasing agent for the Spanish Armada and as a tax collector. He suffered a bankruptcy and was imprisoned at least twice (1597 and 1602) for irregularities in his accounts. Between 1596 and 1600, he lived primarily in Seville. In 1606, Cervantes settled in Madrid, where he remained for the rest of his life.\n\nCervantes died in Madrid on April 23, 1616.")

a16 = Author.create(fname: 'Charles',
                    lname: 'Dickens',
                    image: File.open('app/assets/images/authors/charles-dickens.jpg'),
                    description: "Charles John Huffam Dickens (7 February 1812 – 9 June 1870) was an English writer and social critic. He created some of the world's best-known fictional characters and is regarded as the greatest novelist of the Victorian era. His works enjoyed unprecedented popularity during his lifetime, and by the twentieth century critics and scholars had recognised him as a literary genius. His novels and short stories enjoy lasting popularity.\n\nBorn in Portsmouth, Dickens left school to work in a factory when his father was incarcerated in a debtors\' prison. Despite his lack of formal education, he edited a weekly journal for 20 years, wrote 15 novels, five novellas, hundreds of short stories and non-fiction articles, lectured and performed extensively, was an indefatigable letter writer, and campaigned vigorously for children's rights, education, and other social reforms.\n\nDickens was regarded as the literary colossus of his age. His 1843 novella, A Christmas Carol, remains popular and continues to inspire adaptations in every artistic genre. Oliver Twist and Great Expectations are also frequently adapted, and, like many of his novels, evoke images of early Victorian London. His 1859 novel, A Tale of Two Cities, set in London and Paris, is his best-known work of historical fiction. Dickens's creative genius has been praised by fellow writers—from Leo Tolstoy to George Orwell and G. K. Chesterton—for its realism, comedy, prose style, unique characterisations, and social criticism. On the other hand, Oscar Wilde, Henry James, and Virginia Woolf complained of a lack of psychological depth, loose writing, and a vein of saccharine sentimentalism. The term Dickensian is used to describe something that is reminiscent of Dickens and his writings, such as poor social conditions or comically repulsive characters.\n\nOn 8 June 1870, Dickens suffered another stroke at his home after a full day\'s work on Edwin Drood. He never regained consciousness, and the next day, five years to the day after the Staplehurst rail crash, he died at Gad\'s Hill Place. Contrary to his wish to be buried at Rochester Cathedral \"in an inexpensive, unostentatious, and strictly private manner,\" he was laid to rest in the Poets\' Corner of Westminster Abbey. A printed epitaph circulated at the time of the funeral reads: \"To the Memory of Charles Dickens (England's most popular author) who died at his residence, Higham, near Rochester, Kent, 9 June 1870, aged 58 years. He was a sympathiser with the poor, the suffering, and the oppressed; and by his death, one of England's greatest writers is lost to the world.\" His last words were: \"On the ground\", in response to his sister-in-law Georgina\'s request that he lie down.")

a17 = Author.create(fname: 'J.D.',
                    lname: 'Salinger',
                    image: File.open('app/assets/images/authors/jd-salinger.jpg'),
                    description: "Jerome David Salinger was an American author, best known for his 1951 novel The Catcher in the Rye, as well as his reclusive nature. His last original published work was in 1965; he gave his last interview in 1980. Raised in Manhattan, Salinger began writing short stories while in secondary school, and published several stories in the early 1940s before serving in World War II. In 1948 he published the critically acclaimed story \"A Perfect Day for Bananafish\" in The New Yorker magazine, which became home to much of his subsequent work. In 1951 Salinger released his novel The Catcher in the Rye, an immediate popular success. His depiction of adolescent alienation and loss of innocence in the protagonist Holden Caulfield was influential, especially among adolescent readers. The novel remains widely read and controversial, selling around 250,000 copies a year.\n\nThe success of The Catcher in the Rye led to public attention and scrutiny: Salinger became reclusive, publishing new work less frequently. He followed Catcher with a short story collection, Nine Stories (1953), a collection of a novella and a short story, Franny and Zooey (1961), and a collection of two novellas, Raise High the Roof Beam, Carpenters and Seymour: An Introduction (1963). His last published work, a novella entitled \"Hapworth 16, 1924\", appeared in The New Yorker on June 19, 1965.\n\nAfterward, Salinger struggled with unwanted attention, including a legal battle in the 1980s with biographer Ian Hamilton and the release in the late 1990s of memoirs written by two people close to him: Joyce Maynard, an ex-lover; and Margaret Salinger, his daughter. In 1996, a small publisher announced a deal with Salinger to publish \"Hapworth 16, 1924\" in book form, but amid the ensuing publicity, the release was indefinitely delayed. He made headlines around the globe in June 2009, after filing a lawsuit against another writer for copyright infringement resulting from that writer\'s use of one of Salinger\'s characters from The Catcher in the Rye. Salinger died of natural causes on January 27, 2010, at his home in Cornish, New Hampshire.")

a18 = Author.create(fname: "E.B.",
                    lname: "White",
                    image: File.open('app/assets/images/authors/eb-white.jpg'),
                    description: "Elwyn Brooks White was a leading American essayist, author, humorist, poet and literary stylist and author of such beloved children's classics as Charlotte's Web, Stuart Little, and The Trumpet of the Swan. He graduated from Cornell University in 1921 and, five or six years later, joined the staff of The New Yorker magazine. He authored over seventeen books of prose and poetry and was elected to the American Academy of Arts and Letters in 1973.\n\nWhite always said that he found writing difficult and bad for one's disposition.\n\nMr. White has won countless awards, including the 1971 National Medal for Literature and the Laura Ingalls Wilder Medal, which commended him for making “a substantial and lasting contribution to literature for children.”")

a19 = Author.create(fname: "C.S.",
                    lname: "Lewis",
                    image: File.open('app/assets/images/authors/cs-lewis.jpg'),
                    description: "CLIVE STAPLES LEWIS (1898–1963) was one of the intellectual giants of the twentieth century and arguably one of the most influential writers of his day. He was a Fellow and Tutor in English Literature at Oxford University until 1954. He was unanimously elected to the Chair of Medieval and Renaissance Literature at Cambridge University, a position he held until his retirement. He wrote more than thirty books, allowing him to reach a vast audience, and his works continue to attract thousands of new readers every year. His most distinguished and popular accomplishments include Mere Christianity, Out of the Silent Planet, The Great Divorce, The Screwtape Letters, and the universally acknowledged classics The Chronicles of Narnia. To date, the Narnia books have sold over 100 million copies and been transformed into three major motion pictures.")

a20 = Author.create(fname: "Douglas",
                    lname: "Adams",
                    image: File.open('app/assets/images/authors/douglas-adams.jpg'),
                    description: "Douglas Noël Adams was an English author, comic radio dramatist, and musician. He is best known as the author of the Hitchhiker's Guide to the Galaxy series. Hitchhiker's began on radio, and developed into a \"trilogy\" of five books (which sold more than fifteen million copies during his lifetime) as well as a television series, a comic book series, a computer game, and a feature film that was completed after Adams' death. The series has also been adapted for live theatre using various scripts; the earliest such productions used material newly written by Adams. He was known to some fans as Bop Ad (after his illegible signature), or by his initials \"DNA\".\n\nIn addition to The Hitchhiker's Guide to the Galaxy, Douglas Adams wrote or co-wrote three stories of the science fiction television series Doctor Who and served as Script Editor during the seventeenth season. His other written works include the Dirk Gently novels, and he co-wrote two Liff books and Last Chance to See, itself based on a radio series. Adams also originated the idea for the computer game Starship Titanic, which was produced by a company that Adams co-founded, and adapted into a novel by Terry Jones. A posthumous collection of essays and other material, including an incomplete novel, was published as The Salmon of Doubt in 2002.\n\nHis fans and friends also knew Adams as an environmental activist and a lover of fast cars, cameras, the Macintosh computer, and other \"techno gizmos\". \n\nToward the end of his life he was a sought-after lecturer on topics including technology and the environment.")

a21 = Author.create(fname: "Veronica",
                    lname: "Roth",
                    image: File.open('app/assets/images/authors/veronica-roth.jpg'),
                    description: "Veronica Roth is from a Chicago suburb. She studied creative writing at Northwestern University, and wrote DIVERGENT (Katherine Tegen Books, May 2011) and INSURGENT (May 2012). The third and final book in The Divergent Trilogy, ALLEGIANT, will come out on October 22, 2013. In the meantime she will spend endless hours browsing Wikipedia in her pajamas as she eats corn flakes. (Or some other kind of bland breakfast cereal.)")

a22 = Author.create(fname: "James",
                    lname: "Dashner",
                    image: File.open('app/assets/images/authors/james-dashner.jpg'),
                    description: "James is the author of THE MAZE RUNNER trilogy and THE 13TH REALITY series. He also published a series (beginning with A DOOR IN THE WOODS) with a small publisher several years ago. He lives and writes in the Rocky Mountains.")

a23 = Author.create(fname: "Gillian",
                    lname: "Flynn",
                    image: File.open('app/assets/images/authors/gillian-flynn.jpg'),
                    description: "Gillian Flynn is an American author and television critic for Entertainment Weekly. She has so far written three novels, Sharp Objects, for which she won the 2007 Ian Fleming Steel Dagger for the best thriller; Dark Places; and her best-selling third novel Gone Girl.\n\nHer book has received wide praise, including from authors such as Stephen King. The dark plot revolves around a serial killer in a Missouri town, and the reporter who has returned from Chicago to cover the event. Themes include dysfunctional families,violence and self-harm.\n\nIn 2007 the novel was shortlisted for the Mystery Writers of America Edgar for Best First Novel by an American Writer, Crime Writers' Association Duncan Lawrie, CWA New Blood and Ian Fleming Steel Daggers, winning in the last two categories.\n\nFlynn, who lives in Chicago, grew up in Kansas City, Missouri. She graduated at the University of Kansas, and qualified for a Master's degree from Northwestern University.")

a24 = Author.create(fname: "Paula",
                    lname: "Hawkins",
                    image: File.open('app/assets/images/authors/paula-hawkins.jpg'),
                    description: "Paula Hawkins worked as a journalist for fifteen years before turning her hand to fiction.\n\nBorn and brought up in Zimbabwe, Paula moved to London in 1989 and has lived there ever since. The Girl on the Train is her first thriller.")

a25 = Author.create(fname: "Jeanne",
                    lname: "DuPrau",
                    image: File.open('app/assets/images/authors/jeanne-duprau.jpg'),
                    description: "Jeanne DuPrau spends several hours of every day at her computer, thinking up sentences. She has this quote taped to her wall: \"A writer is someone for whom writing is harder than it is for other people\" (Thomas Mann).\n\nThis gives her courage, because she finds writing very hard. So many words to choose from! So many different things that could happen in a story at any moment! Writing is one tough decision after another. \n\nBut it's also the most satisfying thing she knows how to do. So she keeps doing it. So far, she has written four novels, six books of non-fiction, and quite a few essays and stories. \n\nJeanne DuPrau doesn't write every minute of every day. She also putters around in her garden. She lives in California, where it's easy to grow everything from apples to zinnias.\n\nJeanne DuPrau doesn't have children, but she has two nephews, a niece, and a dog. The dog lives with her. His name is Ethan. Jeanne and Ethan get along well, though their interests are different. Ethan is not very fond of reading, for example, and Jeanne doesn't much like chasing squirrels. But they agree on walks, naps, and trips in the car to surprise destinations. Ethan also likes to help in the garden.")

a26 = Author.create(fname: "Paulo",
                    lname: "Coelho",
                    image: File.open('app/assets/images/authors/paulo-coelho.jpg'),
                    description: "The Brazilian author PAULO COELHO was born in 1947 in the city of Rio de Janeiro. Before dedicating his life completely to literature, he worked as theatre director and actor, lyricist and journalist. In 1986, PAULO COELHO did the pilgrimage to Saint James of Compostella, an experience later to be documented in his book The Pilgrimage. In the following year, COELHO published The Alchemist. Slow initial sales convinced his first publisher to drop the novel, but it went on to become one of the best selling Brazilian books of all time. Other titles include Brida (1990), The Valkyries (1992), By the river Piedra I sat Down and Wept (1994), the collection of his best columns published in the Brazilian newspaper Folha de São Paulo entitle Maktub (1994), the compilation of texts Phrases (1995), The Fifth Mountain (1996), Manual of a Warrior of Light (1997), Veronika decides to die (1998), The Devil and Miss Prym (2000), the compilation of traditional tales in Stories for parents, children and grandchildren (2001), Eleven Minutes (2003), The Zahir (2005), The Witch of Portobello (2006) and Winner Stands Alone (to be released in 2009). During the months of March, April, May and June 2006, Paulo Coelho traveled to celebrate the 20th anniversary of his pilgrimage to Saint James of Compostella in 1986. He also held surprise book signings - announced one day in advance - in some cities along the way, to have a chance to meet his readers. In ninety days of pilgrimage the author traveled around the globe and took the famous Transiberrian train that took him to Vladivostok. During this experience Paulo Coelho launched his blog Walking the Path - The Pilgrimage in order to share with his readers his impressions. Since this first blog Paulo Coelho has expanded his presence in the internet with his daily blogs in Wordpress, Myspace & Facebook. He is equally present in media sharing sites such as Youtube and Flickr, offering on a regular basis not only texts but also videos and pictures to his readers. From this intensive interest and use of the Internet sprang his bold new project: The Experimental Witch where he invites his readers to adapt to the screen his book The Witch of Portobello. Indeed Paulo Coelho is a firm believer of Internet as a new media and is the first Best-selling author to actively support online free distribution of his work.")

a27 = Author.create(fname: "James",
                    lname: "Patterson",
                    image: File.open('app/assets/images/authors/james-patterson.jpg'),
                    description: "James Patterson has created more enduring fictional characters than any other novelist writing today with his Alex Cross, Michael Bennett, Women’s Murder Club, Private, NYPD Red, Daniel X, Maximum Ride, and Middle School series. As of January 2016, he has sold over 350 million books worldwide and currently holds the Guinness World Record for the most #1 New York Times bestsellers. In addition to writing the thriller novels for which he is best known, he also writes children’s, middle-grade, and young-adult fiction and is also the first author to have #1 new titles simultaneously on the New York Times adult and children’s bestsellers lists.\n\nThe son of an insurance salesman and a schoolteacher, Patterson grew up in Newburgh, New York, and began casually writing at the age of nineteen. In 1969, he graduated from Manhattan College. He was given a full ride to Vanderbilt University’s graduate program in English but dropped out after a year, knowing that he wouldn’t be able to continue reading and writing for pleasure if he became a college professor.\n\nInstead, he moved to New York to become a junior copywriter for the advertising agency J. Walter Thompson, eventually becoming CEO of its North American company.\n\nIn 1976, while still working for J. Walter Thompson, Patterson published his first novel, The Thomas Berryman Number, with Little, Brown and Company. After being turned down by thirty-one publishers, it won the Edgar Award for Best First Novel. Patterson’s 1993 novel, Along Came a Spider, his first novel to feature Alex Cross, was also his first New York Times bestseller in fiction.\n\nIn 2001, Morgan Freeman starred as Alex Cross in a film adaptation of Along Came a Spider, and Tyler Perry also played the character in the 2012 film Alex Cross. A film adaptation of Patterson’s middle-grade novel Middle School: The Worst Years of My Life will be released in theaters in October 2016.\n\nFor his initiatives to help kids become passionate readers and for his philanthropic efforts, Patterson was awarded the National Book Foundation’s 2015 Literarian Award for Outstanding Service to the American Literary Community. \n\nJames Patterson has donated more than one million books to students, emphasizing some of the most under-resourced schools and youth programs in the country. In 2015, Patterson donated $1.75 million to school libraries throughout the United States, and $250,000 in holiday bonuses to individual bookstore employees. He also gave $1 million to independent bookstores in 2014.\n\nPatterson has recently donated over $26 million to his and his wife’s alma maters—the University of Wisconsin, Vanderbilt University, and Manhattan College—and he has established over four hundred Teacher Education Scholarships at twenty-four colleges and universities throughout the country. Patterson has also donated over 650,000 books to U.S. soldiers at home and overseas. \n\nIn May 2015, Patterson launched a new children’s book imprint at Little, Brown, called JIMMY Patterson, that is unwaveringly focused on one goal: turning kids into lifelong readers. This imprint also provides resources, strategies, and programs to serve teachers, parents, librarians, and booksellers. Patterson will be investing proceeds from the sales of JIMMY Patterson Books in pro-reading initiatives. \n\nPatterson has also founded ReadKiddoRead.com, a website designed to help parents, teachers, and librarians ignite a new generation’s excitement for reading.")

a28 = Author.create(fname: "Amor",
                    lname: "Towles",
                    image: File.open('app/assets/images/authors/amor-towles.jpg'),
                    description: "Amor Towles was born and raised in the Boston area. He graduated from Yale University and received an MA in English from Stanford University. An investment professional for over twenty years, he now writes fiction full time in Manhattan, where he lives with his wife and two children.")

a29 = Author.create(fname: "M.L.",
                    lname: "Stedman",
                    image: File.open('app/assets/images/authors/ml-stedman.jpg'),
                    description: "M.L. Stedman was born and raised in Western Australia and now lives in London. The Light Between Oceans is her first novel.")

a30 = Author.create(fname: "John",
                    lname: "Steinbeck",
                    image: File.open('app/assets/images/authors/john-steinbeck.jpg'),
                    description: "John Steinbeck III was an American writer. He wrote the Pulitzer Prize-winning novel The Grapes of Wrath, published in 1939 and the novella Of Mice and Men, published in 1937. In all, he wrote twenty-five books, including sixteen novels, six non-fiction books and several collections of short stories. \n\nIn 1962 Steinbeck received the Nobel Prize for Literature.\n\nSteinbeck grew up in the Salinas Valley region of California, a culturally diverse place of rich migratory and immigrant history. This upbringing imparted a regionalistic flavor to his writing, giving many of his works a distinct sense of place. \n\nSteinbeck moved briefly to New York City, but soon returned home to California to begin his career as a writer. Most of his earlier work dealt with subjects familiar to him from his formative years. An exception was his first novel Cup of Gold which concerns the pirate Henry Morgan, whose adventures had captured Steinbeck's imagination as a child.\n\nIn his subsequent novels, Steinbeck found a more authentic voice by drawing upon direct memories of his life in California. Later he used real historical conditions and events in the first half of 20th century America, which he had experienced first-hand as a reporter. \n\nSteinbeck often populated his stories with struggling characters; his works examined the lives of the working class and migrant workers during the Dust Bowl and the Great Depression. His later body of work reflected his wide range of interests, including marine biology, politics, religion, history, and mythology. \n\nOne of his last published works was Travels with Charley, a travelogue of a road trip he took in 1960 to rediscover America. He died in 1968 in New York of a heart attack and his ashes are interred in Salinas.")

a31 = Author.create(fname: "Rick",
                    lname: "Riordan",
                    image: File.open('app/assets/images/authors/rick-riordan.jpg'),
                    description: "Rick Riordan is the #1 New York Times bestselling author of many books, including the Percy Jackson & the Olympians series.")

a32 = Author.create(fname: "Scott",
                    lname: "Turow",
                    image: File.open('app/assets/images/authors/scott-turow.jpg'),
                    description: "Scott F. Turow is an American author and a practicing lawyer. Turow has written eight fiction and two nonfiction books, which have been translated into over 20 languages and have sold over 25 million copies. Movies have been based on several of his books.")

a33 = Author.create(fname: "Steve",
                    lname: "Berry",
                    image: File.open('app/assets/images/authors/steve-berry.jpg'),
                    description: "Steve Berry is the New York Times and #1 internationally bestselling author of The 14th Colony>, The Patriot Threat, The Lincoln Myth, The King's Deception, The Columbus Affair, The Jefferson Key, The Emperor's Tomb, The Paris Vendetta, The Charlemagne Pursuit, The Venetian Betrayal, The Alexandria Link, The Templar Legacy, The Third Secret, The Romanov Prophecy, and The Amber Room. His books have been translated into 40 languages with 20,000,000 copies in 51 countries. They consistently appear in the top echelon of The New York Times, USA Today, and Indie bestseller lists.\n\nHistory lies at the heart of every Steve Berry novel. It’s his passion, one he shares with his wife, Elizabeth, which led them to create History Matters, a foundation dedicated to historic preservation. Since 2009 Steve and Elizabeth have crossed the country to save endangered historic treasures, raising money via lectures, receptions, galas, luncheons, dinners and their popular writers workshops. To date, over 2,500 students have attended those workshops. In 2012 and 2013 Steve’s devotion to historic preservation was recognized by the American Library Association, which named Steve it’s spokesperson for National Preservation Week. Among his other honors is the Royden B. Davis Distinguished Author Award; the 2013 Barnes & Noble Writers for Writers Award given by Poets & Writers; the 2013 Anne Frank Human Writes Award; and the Silver Bullet, bestowed in 2013 by International Thriller Writers for his philanthropic work. A 2010 NPR survey named The Templar Legacy one of the top 100 thrillers ever written.\n\nSteve was born and raised in Georgia, graduating from the Walter F. George School of Law at Mercer University. He was a trial lawyer for 30 years and held elective office for 14 of those years. He is a founding member of International Thriller Writers—a group of more than 2,600 thriller writers from around the world—and served three years as its co-president.")

a34 = Author.create(fname: "Rick",
                    lname: "Yancey",
                    image: File.open('app/assets/images/authors/rick-yancey.jpg'),
                    description: "Rick is a native Floridian and a graduate of Roosevelt University in Chicago. He earned a B.A. in English which he put to use as a field officer for the Internal Revenue Service. Inspired and encouraged by his wife, he decided his degree might also be useful in writing books and in 2004 he began writing full-time.\n\nSince then he has launched two critically acclaimed series: The Extraordinary Adventures of Alfred Kropp, for young readers, and The Highly Effective Detective, for adults. Both books are set in Knoxville, Tennessee, where Rick lived for ten years before returning to Florida.")

a35 = Author.create(fname: "Noah",
                    lname: "Hawley",
                    image: File.open('app/assets/images/authors/noah-hawley.jpg'),
                    description: "Noah Hawley is an Emmy, Golden Globe, PEN, Critics' Choice, and Peabody Award-winning author, screenwriter, and producer. He has published four novels and penned the script for the feature film Lies and Alibis. He created, executive produced, and served as showrunner for ABC's My Generation and The Unusuals and was a writer and producer on the hit series Bones. Hawley is currently executive producer, writer, and showrunner on FX's award-winning series, Fargo.")

a36 = Author.create(fname: "Anthony",
                    lname: "Doerr",
                    image: File.open('app/assets/images/authors/anthony-doerr.jpg'),
                    description: "Anthony Doerr is the author of five books, The Shell Collector , About Grace , Memory Wall , Four Seasons in Rome and All the Light We Cannot See . Doerr’s fiction has won four O. Henry Prizes and has been anthologized in The Best American Short Stories, The Anchor Book of New American Short Stories, and The Scribner Anthology of Contemporary Fiction. He has won the Barnes & Noble Discover Prize, the Rome Prize, the Story Prize, the New York Public Library’s Young Lions Fiction Award, a Guggenheim Fellowship, the Sunday Times EFG Private Bank Award, and the Ohioana Book Award three times. Doerr lives in Boise, Idaho.")

a37 = Author.create(fname: "Ruth",
                    lname: "Ware",
                    image: File.open('app/assets/images/authors/ruth-ware.jpg'),
                    description: "Ruth Ware grew up in Sussex, on the south coast of England. After graduating from Manchester University she moved to Paris, before settling in North London. She has worked as a waitress, a bookseller, a teacher of English as a foreign language and a press officer. She is married with two small children, and In a Dark, Dark Wood is her début thriller.")

a38 = Author.create(fname: "Daniel James",
                    lname: "Brown",
                    image: File.open('app/assets/images/authors/daniel-brown.jpg'),
                    description: "Daniel James Brown fell in love with the written word when he was five and his mother first read Danny and the Dinosaur to him. Since then he has earned a BA in English from the University of California at Berkeley and an MA in English from UCLA. He has taught writing at San Jose State University and Stanford University and now lives in the country east of Redmond, Washington, where he writes nonfiction books about compelling historical events.\n\nBrown's newest book is the New York Times bestseller--The Boys in the Boat: Nine Americans and Their Quest for Gold at the 1936 Berlin Olympics. The book chronicles the extraordinary saga of nine working class boys who stormed the rowing world, transformed the sport, and galvanized the attention of millions of Americans in the midst of the Great Depression. The Weinstein Company has purchased the rights to adapt the book for a feature film.\n\nHis previous book--The Indifferent Stars Above: The Harrowing Saga of a Donner Party Bride--was Chosen as an INDIE NEXT NOTABLE SELECTION by the American Bookseller's Association, it recounts the extraordinary journey of a young woman whose fate became entangled with that of the infamous Donner Party in 1846. His earlier book--Under a Flaming Sky: The Great Hinckley Firestorm of 1894--takes the reader back to the events of September 1, 1894, when his great-grandfather and more than 300 other people died in one of America's greatest forest-fire disasters. That book was selected as a Barnes and Noble Discover Great New Writers pick, was named one of the Best Books of 2006 by Booklist magazine, and was a finalist for the Washington State Book Award.")

a39 = Author.create(fname: "Emma",
                    lname: "Cline",
                    image: File.open('app/assets/images/authors/emma-cline.jpg'),
                    description: "Emma Cline is from California. Her fiction has appeared in Tin House and The Paris Review, and she was the recipient of the 2014 Paris Review Plimpton Prize.")

a40 = Author.create(fname: "Jojo",
                    lname: "Moyes",
                    image: File.open('app/assets/images/authors/jojo-moyes.jpg'),
                    description: "Jojo Moyes is a British novelist.\n\nMoyes studied at Royal Holloway, University of London. She won a bursary financed by The Independent newspaper to study journalism at City University and subsequently worked for The Independent for 10 years. In 2001 she became a full time novelist. \n\nMoyes' novel Foreign Fruit won the Romantic Novelists' Association (RNA) Romantic Novel of the Year in 2004.\n\nShe is married to journalist Charles Arthur and has three children.")

a41 = Author.create(fname: "Stephen",
                    lname: "King",
                    image: File.open('app/assets/images/authors/stephen-king.jpg'),
                    description: "Stephen Edwin King was born the second son of Donald and Nellie Ruth Pillsbury King. After his father left them when Stephen was two, he and his older brother, David, were raised by his mother. Parts of his childhood were spent in Fort Wayne, Indiana, where his father's family was at the time, and in Stratford, Connecticut. When Stephen was eleven, his mother brought her children back to Durham, Maine, for good. Her parents, Guy and Nellie Pillsbury, had become incapacitated with old age, and Ruth King was persuaded by her sisters to take over the physical care of them. Other family members provided a small house in Durham and financial support. After Stephen's grandparents passed away, Mrs. King found work in the kitchens of Pineland, a nearby residential facility for the mentally challenged.\n\nStephen attended the grammar school in Durham and Lisbon Falls High School, graduating in 1966. From his sophomore year at the University of Maine at Orono, he wrote a weekly column for the school newspaper, THE MAINE CAMPUS. He was also active in student politics, serving as a member of the Student Senate. He came to support the anti-war movement on the Orono campus, arriving at his stance from a conservative view that the war in Vietnam was unconstitutional. He graduated in 1970, with a B.A. in English and qualified to teach on the high school level. A draft board examination immediately post-graduation found him 4-F on grounds of high blood pressure, limited vision, flat feet, and punctured eardrums.\n\nHe met Tabitha Spruce in the stacks of the Fogler Library at the University, where they both worked as students; they married in January of 1971. As Stephen was unable to find placement as a teacher immediately, the Kings lived on his earnings as a laborer at an industrial laundry, and her student loan and savings, with an occasional boost from a short story sale to men's magazines.\n\nStephen made his first professional short story sale (\"The Glass Floor\") to Startling Mystery Stories in 1967. Throughout the early years of his marriage, he continued to sell stories to men's magazines. Many were gathered into the Night Shift collection or appeared in other anthologies.\n\nIn the fall of 1971, Stephen began teaching English at Hampden Academy, the public high school in Hampden, Maine. Writing in the evenings and on the weekends, he continued to produce short stories and to work on novels.")

a42 = Author.create(fname: "Lynne Reid",
                    lname: "Banks",
                    image: File.open('app/assets/images/authors/lynne-reid-banks.jpg'),
                    description: "Lynne Reid Banks is a British author of books for children and adults. She has written forty books, including the best-selling children's novel The Indian in the Cupboard, which has sold over 10 million copies and been made into a film.\n\nBanks was born in London, the only child of James and Muriel Reid Banks. She was evacuated to Saskatoon, Saskatchewan, Canada during World War II but returned after the war was over. She attended St Teresa's School in Surrey. Prior to becoming a writer Banks was an actress, and also worked as a television journalist in Britain, one of the first women to do so. Her first novel, The L-Shaped Room, was published in 1960.\n\nIn 1962 Banks emigrated to Israel, where she taught for eight years on an Israeli kibbutz Yasur. In 1965 she married Chaim Stephenson, with whom she had three sons. Although the family returned to England in 1971 and Banks now lives in Dorset with her husband, the influence of her time in Israel can be seen in some of her books which are set partially or mainly on kibbutzim. ")

a43 = Author.create(fname: "Matthew Neill",
                    lname: "Null",
                    image: File.open('app/assets/images/authors/matthew-null.jpg'),
                    description: "Matthew Neill Null is a writer from West Virginia, a graduate of the Iowa Writers’ Workshop, and a winner of the O. Henry Award, the Mary McCarthy Prize, and the Joseph Brodsky Rome Prize from the American Academy of Arts and Letters. He is author of the novel HONEY FROM THE LION and the story collection ALLEGHENY FRONT.")

a44 = Author.create(fname: "Andrew Michael",
                    lname: "Hurley",
                    image: File.open('app/assets/images/authors/andrew-hurley.jpg'),
                    description: "Andrew Michael Hurley (born 1975) is a British writer whose debut novel, The Loney, was published in a limited edition of 300 copies in 2014 by Tartarus Press and was published under Hodder and Stoughton's John Murray imprint in 2015 (ISBN 9781473619821).] He was interviewed on BBC Radio 4's Open Book programme \"British Gothic\" in October 2015.\n\nThe Loney has been reviewed in The Guardian and The Telegraph. It is set in the area of Morecambe Bay in north west England, described in the text as \"that strange nowhere between the Wyre and the Lune\". Hurley has said that the novel's two starting points were \"to write a kind of dark version of the Nativity [...] and exploring ideas of faith and belief\" and \"various wild, lonely places on the north west coast of Lancashire [...] a sense of imminent menace or dormant power lying just under the sand and the water\". It is the winner of the 2015 Costa Book Awards First Novel Award as well as the British Book Industry award for best debut fiction and book of the year.\n\nHurley has previously had two volumes of short stories published by the Lime Tree Press (Cages and Other Stories, 2006, ISBN 9781411699021, and The Unusual Death of Julie Christie and Other Stories, 2008, ISBN 9780955981401). He lives in Lancashire, where he teaches English literature and creative writing.")

a45 = Author.create(fname: "Dr.",
                    lname: "Seuss",
                    image: File.open('app/assets/images/authors/dr-seuss.jpg'),
                    description: "Theodor Seuss Geisel was born 2 March 1904 in Springfield, MA. He graduated Dartmouth College in 1925, and proceeded on to Oxford University with the intent of acquiring a doctorate in literature. At Oxford he met Helen Palmer, who he wed in 1927. He returned from Europe in 1927, and began working for a magazine called Judge, the leading humor magazine in America at the time, submitting both cartoons and humorous articles for them. Additionally, he was submitting cartoons to Life, Vanity Fair and Liberty. In some of his works, he'd made reference to an insecticide called Flit. These references gained notice, and led to a contract to draw comic ads for Flit. This association lasted 17 years, gained him national exposure, and coined the catchphrase \"Quick, Henry, the Flit!\"\n\nIn 1936 on the way to a vaction in Europe, listening to the rhythm of the ship's engines, he came up with And to Think That I Saw It on Mulberry Street, which was then promptly rejected by the first 43 publishers he showed it to. Eventually in 1937 a friend published the book for him, and it went on to at least moderate success. \n\nDuring WW II, Geisel joined the army and was sent to Hollywood. Captain Geisel would write for Frank Capra's Signal Corps Unit (for which he won the Legion of Merit) and do documentaries (he won Oscar's for Hitler Lives and Design for Death). He also created a cartoon called Gerald McBoing-Boing which also won him an Oscar. \n\nIn May of 1954, Life published a report concerning illiteracy among school children. The report said, among other things, that children were having trouble to read because their books were boring. This inspired Geisel's publisher, and prompted him to send Geisel a list of 400 words he felt were important, asked him to cut the list to 250 words (the publishers idea of how many words at one time a first grader could absorb), and write a book. Nine months later, Geisel, using 220 of the words given to him published The Cat in the Hat, which went on to instant success.\n\nIn 1960 Bennett Cerf bet Geisel $50 that he couldn't write an entire book using only fifty words. The result was Green Eggs and Ham. Cerf never paid the $50 from the bet. \n\nHelen Palmer Geisel died in 1967. Theodor Geisel married Audrey Stone Diamond in 1968. Theodor Seuss Geisel died 24 September 1991.\n\nAlso worked under the pen name: Theo Le Sieg.")


#TODO start here

#Sample Author
# a40 = Author.create(fname: "",
#                     lname: "",
#                     image: File.open('app/assets/images/authors/{ FILE_NAME }'),
#                     description: "")


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

b47 = Book.create(title: "The Hitchhiker's Guide to the Galaxy",
                  description: "Seconds before the Earth is demolished to make way for a galactic freeway, Arthur Dent is plucked off the planet by his friend Ford Prefect, a researcher for the revised edition of The Hitchhiker's Guide to the Galaxy who, for the last fifteen years, has been posing as an out-of-work actor.\n\nTogether this dynamic pair begin a journey through space aided by quotes from The Hitchhiker's Guide (\"A towel is about the most massively useful thing an interstellar hitchhiker can have\") and a galaxy-full of fellow travelers: Zaphod Beeblebrox--the two-headed, three-armed ex-hippie and totally out-to-lunch president of the galaxy; Trillian, Zaphod's girlfriend (formally Tricia McMillan), whom Arthur tried to pick up at a cocktail party once upon a time zone; Marvin, a paranoid, brilliant, and chronically depressed robot; Veet Voojagig, a former graduate student who is obsessed with the disappearance of all the ballpoint pens he bought over the years.",
                  author_id: Author.find_by_name("Douglas Adams").id,
                  book_cover: File.open('app/assets/images/book_covers/Hitchhikers_Guide/hitchhikers-guide.jpg'))

b48 = Book.create(title: "The Restaurant at the End of the Universe",
                  description: "Facing annihilation at the hands of the warlike Vogons is a curious time to have a craving for tea. It could only happen to the cosmically displaced Arthur Dent and his curious comrades in arms as they hurtle across space powered by pure improbabilityband desperately in search of a place to eat.\n\nAmong Arthur's motley shipmates are Ford Prefect, a longtime friend and expert contributor to the Hitchhiker's Guide to the Galaxy; Zaphod Beeblebrox, the three-armed, two-headed ex-president of the galaxy; Tricia McMillan, a fellow Earth refugee who's gone native (her name is Trillian now); and Marvin, the moody android who suffers nothing and no one very gladly. Their destination? The ultimate hot spot for an evening of apocalyptic entertainment and fine dining, where the food (literally) speaks for itself.\n\nWill they make it? The answer: hard to say. But bear in mind that the Hitchhiker's Guide deleted the term \"Future Perfect\" from its pages, since it was discovered not to be!\n\n\"What's such fun is how amusing the galaxy looks through Adams' sardonically silly eyes.\"",
                  author_id: Author.find_by_name("Douglas Adams").id,
                  book_cover: File.open('app/assets/images/book_covers/Hitchhikers_Guide/restaurant-at-the-end.jpg'))

b49 = Book.create(title: "Life, the Universe and Everything",
                  description: "The unhappy inhabitants of planet Krikkit are sick of looking at the night sky above their heads–so they plan to destroy it. The universe, that is. Now only five individuals stand between the killer robots of Krikkit and their goal of total annihilation.\n\nThey are Arthur Dent, a mild-mannered space and time traveler who tries to learn how to fly by throwing himself at the ground and missing; Ford Prefect, his best friend, who decides to go insane to see if he likes it; Slartibartfast, the indomitable vice president of the Campaign for Real Time, who travels in a ship powered by irrational behavior; Zaphod Beeblebrox, the two-headed, three-armed ex-president of the galazy; and Trillian, the sexy space cadet who is torn between a persistent Thunder God and a very depressed Beeblebrox.\n\nHow will it all end? Will it end? Only this stalwart crew knows as they try to avert “universal” Armageddon and save life as we know it–and don’t know it!",
                  author_id: Author.find_by_name("Douglas Adams").id,
                  book_cover: File.open('app/assets/images/book_covers/Hitchhikers_Guide/life-universe-everything.jpg'))

b50 = Book.create(title: "Divergent",
                  description: "In Beatrice Prior's dystopian Chicago world, society is divided into five factions, each dedicated to the cultivation of a particular virtue—Candor (the honest), Abnegation (the selfless), Dauntless (the brave), Amity (the peaceful), and Erudite (the intelligent). On an appointed day of every year, all sixteen-year-olds must select the faction to which they will devote the rest of their lives. For Beatrice, the decision is between staying with her family and being who she really is—she can't have both. So she makes a choice that surprises everyone, including herself.\n\nDuring the highly competitive initiation that follows, Beatrice renames herself Tris and struggles alongside her fellow initiates to live out the choice they have made. Together they must undergo extreme physical tests of endurance and intense psychological simulations, some with devastating consequences. As initiation transforms them all, Tris must determine who her friends really are—and where, exactly, a romance with a sometimes fascinating, sometimes exasperating boy fits into the life she's chosen. But Tris also has a secret, one she's kept hidden from everyone because she's been warned it can mean death. And as she discovers unrest and growing conflict that threaten to unravel her seemingly perfect society, she also learns that her secret might help her save those she loves . . . or it might destroy her.",
                  author_id: Author.find_by_name("Veronica Roth").id,
                  book_cover: File.open('app/assets/images/book_covers/Divergent/divergent.jpg'))

b51 = Book.create(title: "Insurgent",
                  description: "One choice can transform you—or it can destroy you. But every choice has consequences, and as unrest surges in the factions all around her, Tris Prior must continue trying to save those she loves—and herself—while grappling with haunting questions of grief and forgiveness, identity and loyalty, politics and love.\n\nTris's initiation day should have been marked by celebration and victory with her chosen faction; instead, the day ended with unspeakable horrors. War now looms as conflict between the factions and their ideologies grows. And in times of war, sides must be chosen, secrets will emerge, and choices will become even more irrevocable—and even more powerful. Transformed by her own decisions but also by haunting grief and guilt, radical new discoveries, and shifting relationships, Tris must fully embrace her Divergence, even if she does not know what she may lose by doing so.\n\nNew York Times bestselling author Veronica Roth's much-anticipated second book of the dystopian DIVERGENT series is another intoxicating thrill ride of a story, rich with hallmark twists, heartbreaks, romance, and powerful insights about human nature.",
                  author_id: Author.find_by_name("Veronica Roth").id,
                  book_cover: File.open('app/assets/images/book_covers/Divergent/insurgent.jpg'))

b52 = Book.create(title: "Allegiant",
                  description: "The faction-based society that Tris Prior once believed in is shattered - fractured by violence and power struggles and scarred by loss and betrayal. So when offered a chance to explore the world past the limits she's known, Tris is ready. Perhaps beyond the fence, she and Tobias will find a simple new life together, free from complicated lies, tangled loyalties, and painful memories.\n\nBut Tris's new reality is even more alarming than the one she left behind. Old discoveries are quickly rendered meaningliess. Explosive new truths change the hearts of those she loves. And once again, Tris must battle to comprehend to complexities of human nature - and of herself - while facing impossible choices about courage, allegiance, sacrifice, and love.\n\nTold from a riveting dual perspective, ALLEGIANT, by #1 New York Times best-selling author Veronica Roth, brings the DIVERGENT series to a powerful conclusion while revealing the secrets of the dystopian world that has captivated millions of readers in DIVERGENT and INSURGENT.",
                  author_id: Author.find_by_name("Veronica Roth").id,
                  book_cover: File.open('app/assets/images/book_covers/Divergent/allegiant.jpg'))

b53 = Book.create(title: "The Maze Runner",
                  description: "If you ain’t scared, you ain’t human.\n\nWhen Thomas wakes up in the lift, the only thing he can remember is his name. He’s surrounded by strangers—boys whose memories are also gone.\n\nNice to meet ya, shank. Welcome to the Glade.\n\nOutside the towering stone walls that surround the Glade is a limitless, ever-changing maze. It’s the only way out—and no one’s ever made it through alive.\n\nEverything is going to change.\n\nThen a girl arrives. The first girl ever. And the message she delivers is terrifying.\n\nRemember. Survive. Run.",
                  author_id: Author.find_by_name("James Dashner").id,
                  book_cover: File.open('app/assets/images/book_covers/Mazerunner/maze-runner.jpg'))

b54 = Book.create(title: "The Scorch Trials",
                  description: "Solving the Maze was supposed to be the end.\n\nThomas was sure that escape from the Maze would mean freedom for him and the Gladers. But WICKED isn’t done yet. Phase Two has just begun. The Scorch. \n\nThere are no rules. There is no help. You either make it or you die.\n\nThe Gladers have two weeks to cross through the Scorch—the most burned-out section of the world. And WICKED has made sure to adjust the variables and stack the odds against them. \n\nFriendships will be tested. Loyalties will be broken. All bets are off.\n\nThere are others now. Their survival depends on the Gladers’ destruction—and they’re determined to survive.",
                  author_id: Author.find_by_name("James Dashner").id,
                  book_cover: File.open('app/assets/images/book_covers/Mazerunner/scorch-trials.jpg'))

b55 = Book.create(title: "The Death Cure",
                  description: "It’s the end of the line.\n\nWICKED has taken everything from Thomas: his life, his memories, and now his only friends—the Gladers. But it’s finally over. The trials are complete, after one final test.\n\nWill anyone survive?\n\nWhat WICKED doesn’t know is that Thomas remembers far more than they think. And it’s enough to prove that he can’t believe a word of what they say.\n\nThe truth will be terrifying.\n\nThomas beat the Maze. He survived the Scorch. He’ll risk anything to save his friends. But the truth might be what ends it all.\n\nThe time for lies is over.",
                  author_id: Author.find_by_name("James Dashner").id,
                  book_cover: File.open('app/assets/images/book_covers/Mazerunner/death-cure.jpg'))

b56 = Book.create(title: "The Kill Order",
                  description: "The prequel to the New York Times bestselling Maze Runner series.\n\nBefore WICKED was formed, before the Glade was built, before Thomas entered the Maze, sun flares hit the earth and mankind fell to disease.\n\nMark and Trina were there when it happened, and they survived. But surviving the sun flares was easy compared to what came next. Now a disease of rage and lunacy races across the eastern United States, and there’s something suspicious about its origin. Worse yet, it’s mutating, and all evidence suggests that it will bring humanity to its knees.\n\nMark and Trina are convinced there’s a way to save those left living from descending into madness. And they’re determined to find it—if they can stay alive. Because in this new, devastated world, every life has a price. And to some, you’re worth more dead than alive.",
                  author_id: Author.find_by_name("James Dashner").id,
                  book_cover: File.open('app/assets/images/book_covers/Mazerunner/kill-order.jpg'))

b57 = Book.create(title: "Gone Girl",
                  description: "On a warm summer morning in North Carthage, Missouri, it is Nick and Amy Dunne’s fifth wedding anniversary. Presents are being wrapped and reservations are being made when Nick’s clever and beautiful wife disappears. Husband-of-the-Year Nick isn’t doing himself any favors with cringe-worthy daydreams about the slope and shape of his wife’s head, but passages from Amy's diary reveal the alpha-girl perfectionist could have put anyone dangerously on edge. Under mounting pressure from the police and the media—as well as Amy’s fiercely doting parents—the town golden boy parades an endless series of lies, deceits, and inappropriate behavior. Nick is oddly evasive, and he’s definitely bitter—but is he really a killer?",
                  author_id: Author.find_by_name("Gillian Flynn").id,
                  book_cover: File.open('app/assets/images/book_covers/gone-girl.jpg'))

b58 = Book.create(title: "The Girl on the Train",
                  description: "EVERY DAY THE SAME\n\nRachel takes the same commuter train every morning and night. Every day she rattles down the track, flashes past a stretch of cozy suburban homes, and stops at the signal that allows her to daily watch the same couple breakfasting on their deck. She’s even started to feel like she knows them. Jess and Jason, she calls them. Their life—as she sees it—is perfect. Not unlike the life she recently lost.\n\nUNTIL TODAY\n\nAnd then she sees something shocking. It’s only a minute until the train moves on, but it’s enough. Now everything’s changed. Unable to keep it to herself, Rachel goes to the police. But is she really as unreliable as they say? Soon she is deeply entangled not only in the investigation but in the lives of everyone involved. Has she done more harm than good?",
                  author_id: Author.find_by_name("Paula Hawkins").id,
                  book_cover: File.open('app/assets/images/book_covers/girl-on-the-train.jpg'))

b59 = Book.create(title: "The City of Ember",
                  description: "Many hundreds of years ago, the city of Ember was created by the Builders to contain everything needed for human survival. It worked…but now the storerooms are almost out of food, crops are blighted, corruption is spreading through the city and worst of all—the lights are failing. Soon Ember could be engulfed by darkness…\n\nBut when two children, Lina and Doon, discover fragments of an ancient parchment, they begin to wonder if there could be a way out of Ember. Can they decipher the words from long ago and find a new future for everyone? Will the people of Ember listen to them?",
                  author_id: Author.find_by_name("Jeanne DuPrau").id,
                  book_cover: File.open('app/assets/images/book_covers/Books_of_Ember/city-of-ember.jpg'))

b60 = Book.create(title: "The People of Sparks",
                  description: "“It is green here and very big. Light comes from the sky…”\n\nWhen Lina and Doon lead their people up from the underground city of Ember, they discover a surface world of color and life. The people of a small village called Sparks agree to help the Emberites, but the villagers have never had to share their world before. Soon differences between the two groups escalate, and it's up to Lina and Doon to find a way to avoid war!\n\nIn the riveting sequel to the highly acclaimed The City of Ember, Jeanne DuPrau explores the nature of conflict and the strength and courage necessary to overcome it.",
                  author_id: Author.find_by_name("Jeanne DuPrau").id,
                  book_cover: File.open('app/assets/images/book_covers/Books_of_Ember/people-of-sparks.jpg'))

b61 = Book.create(title: "The Prophet of Yonwood",
                  description: "It’s 50 years before the settlement of the city of Ember, and the world is in crisis. War looms on the horizon as 11-year-old Nickie and her aunt travel to the small town of Yonwood, North Carolina. There, one of the town’s respected citizens has had a terrible vision of fire and destruction. Her garbled words are taken as prophetic instruction on how to avoid the coming disaster. If only they can be interpreted correctly. . . .\n\nAs the people of Yonwood scramble to make sense of the woman’s mysterious utterances, Nickie explores the oddities she finds around town—her great-grandfather’s peculiar journals and papers, a reclusive neighbor who studies the heavens, a strange boy who is fascinated with snakes—all while keeping an eye out for ways to help the world. Is this vision her chance? Or is it already too late to avoid a devastating war?\n\nIn this prequel to the acclaimed The City of Ember and The People of Sparks, Jeanne DuPrau investigates how, in a world that seems out of control, hope and comfort can be found in the strangest of places.",
                  author_id: Author.find_by_name("Jeanne DuPrau").id,
                  book_cover: File.open('app/assets/images/book_covers/Books_of_Ember/prophet-of-yonwood.jpg'))

b62 = Book.create(title: "The Diamond of Darkhold",
                  description: "It’s been several months since Lina and Doon escaped the dying city of Ember and, along with the rest of their people, joined the town of Sparks. Now, struggling through the harsh winter aboveground, they find an unusual book. Torn up and missing most of its pages, it alludes to a mysterious device from before the Disaster, which they believe is still in Ember. Together, Lina and Doon must go back underground to retrieve what was lost and bring light to a dark world.\n\nIn the fourth Book of Ember, bestselling author Jeanne DuPrau juxtaposes yet another action-packed adventure with powerful themes about hope, learning, and the search for truth.",
                  author_id: Author.find_by_name("Jeanne DuPrau").id,
                  book_cover: File.open('app/assets/images/book_covers/Books_of_Ember/diamond-of-darkhold.jpg'))

b63 = Book.create(title: "The Alchemist",
                  description: "Paulo Coelho's enchanting novel has inspired a devoted following around the world. This story, dazzling in its powerful simplicity and inspiring wisdom, is about an Andalusian shepherd boy named Santiago who travels from his homeland in Spain to the Egyptian desert in search of a treasure buried in the Pyramids. Along the way he meets a Gypsy woman, a man who calls himself king, and an alchemist, all of whom point Santiago in the direction of his quest. No one knows what the treasure is, or if Santiago will be able to surmount the obstacles along the way. But what starts out as a journey to find worldly goods turns into a discovery of the treasure found within. Lush, evocative, and deeply humane, the story of Santiago is an eternal testament to the transforming power of our dreams and the importance of listening to our hearts.",
                  author_id: Author.find_by_name("Paulo Coelho").id,
                  book_cover: File.open('app/assets/images/book_covers/the-alchemist.jpg'))

b64 = Book.create(title: "Bullseye",
                  description: "Caught in the crossfire of a deadly standoff, Detective Michael Bennett must kill...or be killed.\n\nTensions between America and Russia are the highest they've been since the Cold War. As the countries' Presidents travel to the United Nations to iron out their differences, a fashionable husband and wife team of lethal assassins prowls the streets of Manhattan hunting their prey--a professor hiding a scandalous secret. Their next target: the extremely popular President of the United States of America. Pulled away from his family and pressed into service, Detective Michael Bennett must trace the source of a threat that could rip the country apart--and what he finds may turn the Cold War red hot once again. With allegiances constantly in doubt and no one above suspicion, only Bennett can step into the line of fire to save the President before the deadly kill shot hits its mark.",
                  author_id: Author.find_by_name("James Patterson").id,
                  book_cover: File.open('app/assets/images/book_covers/bullseye.jpg'))

b65 = Book.create(title: "Along Came a Spider",
                  description: "The classic thriller that launched the Alex Cross series, the #1 detective series of the past twenty-five years! \n\nA missing little girl named Maggie Rose . . . a family of three brutally murdered in the projects of Washington, D.C. . . . the thrill-killing of a beautiful elementary school teacher . . . a psychopathic serial kidnapper/murderer who is so terrifying that the FBI, the Secret Service, and the police cannot outsmart him - even after he's been captured.\n\nGary Soneji wants to commit the crime of the century. Alex Cross is the brilliant homicide detective pitted against him. Jezzie Flanagan is the first female supervisor of the Secret Service who completes one of the most unusual suspense triangles in any thriller you have ever read. \n\nAlex Cross and Jezzie Flanagan are about to have a forbidden love affair--at the worst possible time for both of them. Because Gary Soneji is playing at the top of his game. The latest of the unspeakable crimes happens in Alex Cross's precinct. It happens under the noses of Jezzie Flanagan's men. Now Alex Cross must face the ultimate test: How do you outmaneuver a brilliant psychopath?",
                  author_id: Author.find_by_name("James Patterson").id,
                  book_cover: File.open('app/assets/images/book_covers/along-came-a-spider.jpg'))

b66 = Book.create(title: "Jack and Jill",
                  description: "In the middle of the night, a controversial U.S. senator is found murdered in bed in his Georgetown pied-a-terre. The police turn up only one clue: a mysterious rhyme signed \"Jack and Jill\" promising that this is just the beginning. Jack and Jill are out to get the rich and famous, and they will stop at nothing until their fiendish plan is carried out.\n\nMeanwhile, Washington, D. C., homicide detective Alex Cross is called to a murder scene only blocks from his house, far from the corridors of power where he spends his days. The victim: a beautiful little girl, savagely beaten--and desposited in front of the elementary school Cross's son, Damon, attends.\n\nCould there be a connection between the two murders? As Cross tries to put the pieces together, the killer- or killers - strike again. And again. No one in Washington is safe - not children, not politicians, not even the President of the United States. Only Alex Cross has the skills and the courage to crack the case-but will he discover the truth in time?\n\nA relentless roller coaster of heart-pounding suspense and jolting plot twists, Jack and Jill proves that no one can write a more compelling thriller than James Patterson--the master of the nonstop nightmare.",
                  author_id: Author.find_by_name("James Patterson").id,
                  book_cover: File.open('app/assets/images/book_covers/jack-and-jill.jpg'))

b67 = Book.create(title: "Kiss the Girls",
                  description: "In Los Angeles, a reporter investigating a series of murders is killed. In Chapel Hill, North Carolina, a beautiful medical intern suddenly disappears. In Washington D.C. Alex Cross is back to solve the most baffling and terrifying murder case ever. Two clever pattern killers are collaborating, cooperating, competing - and they are working coast to coast.",
                  author_id: Author.find_by_name("James Patterson").id,
                  book_cover: File.open('app/assets/images/book_covers/kiss-the-girls.jpg'))

b68 = Book.create(title: "A Gentleman in Moscow",
                  description: "In 1922 Count Rostov is deemed an unrepentant aristocrat by a Bolshevik tribunal. He is sentenced to house arrest in The Metropol, a grand hotel across the street from the Kremlin. Rostov, an indomitable man of erudition and wit, has never worked a day in his life, and must now live in an attic room while some of the most tumultuous decades in Russian history are unfolding outside the hotel’s doors. Unexpectedly, his reduced circumstances provide him a doorway into a much larger world of emotional discovery.\n\nBrimming with humour, a glittering cast of characters, and one beautifully rendered scene after another, this singular novel casts a spell as it relates the Count’s endeavour to gain a deeper understanding of what it means to be a man of purpose.",
                  author_id: Author.find_by_name("Amor Towles").id,
                  book_cover: File.open('app/assets/images/book_covers/gentleman-in-moscow.jpg'))

b69 = Book.create(title: "The Light Between Oceans",
                  description: "After four harrowing years on the Western Front, Tom Sherbourne returns to Australia and takes a job as the lighthouse keeper on Janus Rock, nearly half a day’s journey from the coast. To this isolated island, where the supply boat comes once a season and shore leaves are granted every other year at best, Tom brings a young, bold, and loving wife, Isabel. Years later, after two miscarriages and one stillbirth, the grieving Isabel hears a baby’s cries on the wind. A boat has washed up onshore carrying a dead man and a living baby. \n\nTom, whose records as a lighthouse keeper are meticulous and whose moral principles have withstood a horrific war, wants to report the man and infant immediately. But Isabel has taken the tiny baby to her breast. Against Tom’s judgment, they claim her as their own and name her Lucy. When she is two, Tom and Isabel return to the mainland and are reminded that there are other people in the world. Their choice has devastated one of them. \n\nM. L. Stedman’s mesmerizing, beautifully written novel seduces us into accommodating Isabel’s decision to keep this “gift from God.” And we are swept into a story about extraordinarily compelling characters seeking to find their North Star in a world where there is no right answer, where justice for one person is another’s tragic loss.",
                  author_id: Author.find_by_name("M.L. Stedman").id,
                  book_cover: File.open('app/assets/images/book_covers/light-between-oceans.jpg'))

b70 = Book.create(title: "Of Mice and Men",
                  description: "The compelling story of two outsiders striving to find their place in an unforgiving world. Drifters in search of work, George and his simple-minded friend Lennie have nothing in the world except each other and a dream--a dream that one day they will have some land of their own. Eventually they find work on a ranch in California’s Salinas Valley, but their hopes are doomed as Lennie, struggling against extreme cruelty, misunderstanding and feelings of jealousy, becomes a victim of his own strength. Tackling universal themes such as the friendship of a shared vision, and giving voice to America’s lonely and dispossessed, Of Mice and Men has proved one of Steinbeck’s most popular works, achieving success as a novel, a Broadway play and three acclaimed films.",
                  author_id: Author.find_by_name("John Steinbeck").id,
                  book_cover: File.open('app/assets/images/book_covers/mice-and-men.jpg'))

b71 = Book.create(title: "The Grapes of Wrath",
                  description: "First published in 1939, Steinbeck’s Pulitzer Prize winning epic of the Great Depression chronicles the Dust Bowl migration of the 1930s and tells the story of one Oklahoma farm family, the Joads, driven from their homestead and forced to travel west to the promised land of California. Out of their trials and their repeated collisions against the hard realities of an America divided into haves and have-nots evolves a drama that is intensely human yet majestic in its scale and moral vision, elemental yet plainspoken, tragic but ultimately stirring in its human dignity.\n\nA portrait of the conflict between the powerful and the powerless, of one man’s fierce reaction to injustice, and of one woman’s stoical strength, the novel captures the horrors of the Great Depression and probes the very nature of equality and justice in America.\n\nSensitive to fascist and communist criticism, Steinbeck insisted that \"The Battle Hymn of the Republic” be printed in its entirety in the first edition of the book—which takes its title from the first verse: He is trampling out the vintage where the grapes of wrath are stored.” As Don DeLillo has claimed, Steinbeck shaped a geography of conscience” with this novel where there is something at stake in every sentence.” Beyond that—for emotional urgency, evocative power, sustained impact, prophetic reach, and continued controversy—The Grapes of Wrath is perhaps the most American of American classics.",
                  author_id: Author.find_by_name("John Steinbeck").id,
                  book_cover: File.open('app/assets/images/book_covers/grapes-of-wrath.jpg'))

b72 = Book.create(title: "The Hidden Oracle",
                  description: "How do you punish an immortal?\n\nBy making him human.\n\nAfter angering his father Zeus, the god Apollo is cast down from Olympus. Weak and disorientated, he lands in New York City as a regular teenage boy. Now, without his godly powers, the four-thousand-year-old deity must learn to survive in the modern world until he can somehow find a way to regain Zeus's favour.\n\nBut Apollo has many enemies - gods, monsters and mortals who would love to see the former Olympian permanently destroyed. Apollo needs help, and he can think of only one place to go . . . an enclave of modern demigods known as Camp Half-Blood.",
                  author_id: Author.find_by_name("Rick Riordan").id,
                  book_cover: File.open('app/assets/images/book_covers/Trials_of_Apollo/hidden-oracle.jpg'))

b73 = Book.create(title: "The Dark Prophecy",
                  description: "Zeus has punished his son Apollo—god of the sun, music, archery, poetry, and more—by casting him down to earth in the form of a gawky, acne-covered sixteen-year-old mortal named Lester. The only way Apollo can reclaim his rightful place on Mount Olympus is by restoring several Oracles that have gone dark. What is affecting the Oracles, and how can Apollo do anything about them without his powers? After experiencing a series of dangerous—and frankly, humiliating—trials at Camp Half-Blood, Apollo must now leave the relative safety of the demigod training ground and embark on a hair-raising journey across North America. Fortunately, what he lacks in godly graces he's gaining in new friendships—with heroes who will be very familiar to fans of the Percy Jackson and the Olympians and Heroes of Olympus series. Come along for what promises to be a harrowing, hilarious, and haiku-filled ride. . . .",
                  author_id: Author.find_by_name("Rick Riordan").id,
                  book_cover: File.open('app/assets/images/book_covers/Trials_of_Apollo/dark-prophecy.jpg'))

b74 = Book.create(title: "Cross the Line",
                  description: "Alex Cross chases a cold-blooded killer...with a conscience.\n\nShots ring out in the early morning hours in the suburbs of Washington, D.C. When the smoke clears, a prominent police official lies dead, leaving the city's police force scrambling for answers.\n\nUnder pressure from the mayor, Alex Cross steps into the leadership vacuum to investigate the case. But before Cross can make any headway, a brutal crime wave sweeps across the region. The deadly scenes share only one common thread – the victims are all criminals. And the only thing more dangerous than a murderer without a conscience, is a killer who thinks he has justice on his side.\n\nAs Cross pursues an adversary who has appointed himself judge, jury, and executioner, he must take the law back into his own hands before the city he's sworn to protect descends into utter chaos.",
                  author_id: Author.find_by_name("James Patterson").id,
                  book_cover: File.open('app/assets/images/book_covers/cross-the-line.jpg'))

b75 = Book.create(title: "Identical",
                  description: "IDENTICAL, based loosely on the myth of Castor and Pollux, is the story of identical twins Paul and Cass Giannis and the complex relationships between their family and their former neighbors, the Kronons. The novel focuses principally on events in 2008, when Paul is a candidate for Mayor of Kindle County, and Cass is released from the penitentiary, 25 years after pleading guilty to the murder of his girlfriend, Aphrodite Kronon. The plot centers on the re-investigation of Aphrodite's murder, carried out together by Evon Miller, an ex-FBI agent who is the head of security for the Kronon family business ZP, and private investigator Tim Brodie, 81, a former homicide detective. The complex web of murder, sex, and betrayal-as only Scott Turow could weave-dramatically unfolds, and the chilling truth is revealed: people will believe what they want to believe.",
                  author_id: Author.find_by_name("Scott Turow").id,
                  book_cover: File.open('app/assets/images/book_covers/identical.jpg'))

b76 = Book.create(title: "The King's Deception",
                  description: "Cotton Malone and his fifteen-year-old son, Gary, are headed to Europe. As a favor to his former boss at the Justice Department, Malone agrees to escort a teenage fugitive back to England. But after he is greeted at gunpoint in London, both the fugitive and Gary disappear, and Malone learns that he’s stumbled into a high-stakes diplomatic showdown—an international incident fueled by geopolitical gamesmanship and shocking Tudor secrets.\n\nAt its heart is the Libyan terrorist convicted of bombing Pan Am Flight 103, who is set to be released by Scottish authorities for “humanitarian reasons.” An outraged American government objects, but nothing can persuade the British to intervene.\n\nExcept, perhaps, Operation King’s Deception.\n\nRun by the CIA, the operation aims to solve a centuries-old mystery, one that could rock Great Britain to its royal foundations.\n\nBlake Antrim, the CIA operative in charge of King’s Deception, is hunting for the spark that could rekindle a most dangerous fire, the one thing that every Irish national has sought for generations: a legal reason why the English must leave Northern Ireland. The answer is a long-buried secret that calls into question the legitimacy of the entire forty-five-year reign of Elizabeth I, the last Tudor monarch, who completed the conquest of Ireland and seized much of its land. But Antrim also has a more personal agenda, a twisted game of revenge in which Gary is a pawn. With assassins, traitors, spies, and dangerous disciples of a secret society closing in, Malone is caught in a lethal bind. To save Gary he must play one treacherous player against another—and only by uncovering the incredible truth can he hope to prevent the shattering consequences of the King’s Deception.",
                  author_id: Author.find_by_name("Steve Berry").id,
                  book_cover: File.open('app/assets/images/book_covers/kings-deception.jpg'))

b77 = Book.create(title: "The 5th Wave",
                  description: "After the 1st wave, only darkness remains. After the 2nd, only the lucky escape. And after the 3rd, only the unlucky survive. After the 4th wave, only one rule applies: trust no one.\n\nNow, it's the dawn of the 5th wave, and on a lonely stretch of highway, Cassie runs from Them. The beings who only look human, who roam the countryside killing anyone they see. Who have scattered Earth's last survivors. To stay alone is to stay alive, Cassie believes, until she meets Evan Walker. Beguiling and mysterious, Evan Walker may be Cassie's only hope for rescuing her brother-or even saving herself. But Cassie must choose: between trust and despair, between defiance and surrender, between life and death. To give up or to get up. ",
                  author_id: Author.find_by_name("Rick Yancey").id,
                  book_cover: File.open('app/assets/images/book_covers/Fifth_Wave/5th-wave.jpg'))

b78 = Book.create(title: "The Infinite Sea",
                  description: "How do you rid the Earth of seven billion humans? Rid the humans of their humanity.\n\nSurviving the first four waves was nearly impossible. Now Cassie Sullivan finds herself in a new world, a world in which the fundamental trust that binds us together is gone. As the 5th Wave rolls across the landscape, Cassie, Ben, and Ringer are forced to confront the Others’ ultimate goal: the extermination of the human race.\n\nCassie and her friends haven’t seen the depths to which the Others will sink, nor have the Others seen the heights to which humanity will rise, in the ultimate battle between life and death, hope and despair, love and hate.",
                  author_id: Author.find_by_name("Rick Yancey").id,
                  book_cover: File.open('app/assets/images/book_covers/Fifth_Wave/infinite-sea.jpg'))

b79 = Book.create(title: "The Last Star",
                  description: "The enemy is Other. The enemy is us.\n\nThey’re down here, they’re up there, they’re nowhere. They want the Earth, they want us to have it. They came to wipe us out, they came to save us.\n\nBut beneath these riddles lies one truth: Cassie has been betrayed. So has Ringer. Zombie. Nugget. And all 7.5 billion people who used to live on our planet. Betrayed first by the Others, and now by ourselves.\n\nIn these last days, Earth’s remaining survivors will need to decide what’s more important: saving themselves…or saving what makes us human.",
                  author_id: Author.find_by_name("Rick Yancey").id,
                  book_cover: File.open('app/assets/images/book_covers/Fifth_Wave/last-star.jpg'))

b80 = Book.create(title: "Before the Fall",
                  description: "On a foggy summer night, eleven people—ten privileged, one down-on-his-luck painter—depart Martha's Vineyard on a private jet headed for New York. Sixteen minutes later, the unthinkable happens: the plane plunges into the ocean. The only survivors are Scott Burroughs—the painter—and a four-year-old boy, who is now the last remaining member of an immensely wealthy and powerful media mogul's family. \n\nWith chapters weaving between the aftermath of the crash and the backstories of the passengers and crew members—including a Wall Street titan and his wife, a Texan-born party boy just in from London, a young woman questioning her path in life, and a career pilot—the mystery surrounding the tragedy heightens. As the passengers' intrigues unravel, odd coincidences point to a conspiracy. Was it merely by dumb chance that so many influential people perished? Or was something far more sinister at work? Events soon threaten to spiral out of control in an escalating storm of media outrage and accusations. And while Scott struggles to cope with fame that borders on notoriety, the authorities scramble to salvage the truth from the wreckage. \n\nAmid pulse-quickening suspense, the fragile relationship between Scott and the young boy glows at the heart of this stunning novel, raising questions of fate, human nature, and the inextricable ties that bind us together.",
                  author_id: Author.find_by_name("Noah Hawley").id,
                  book_cover: File.open('app/assets/images/book_covers/before-the-fall.jpg'))

b81 = Book.create(title: "All the Light We Cannot See",
                  description: "From the highly acclaimed, multiple award-winning Anthony Doerr, the beautiful, stunningly ambitious instant New York Times bestseller about a blind French girl and a German boy whose paths collide in occupied France as both try to survive the devastation of World War II.\n\nMarie-Laure lives with her father in Paris near the Museum of Natural History, where he works as the master of its thousands of locks. When she is six, Marie-Laure goes blind and her father builds a perfect miniature of their neighborhood so she can memorize it by touch and navigate her way home. When she is twelve, the Nazis occupy Paris and father and daughter flee to the walled citadel of Saint-Malo, where Marie-Laure’s reclusive great-uncle lives in a tall house by the sea. With them they carry what might be the museum’s most valuable and dangerous jewel.\n\nIn a mining town in Germany, the orphan Werner grows up with his younger sister, enchanted by a crude radio they find. Werner becomes an expert at building and fixing these crucial new instruments, a talent that wins him a place at a brutal academy for Hitler Youth, then a special assignment to track the resistance. More and more aware of the human cost of his intelligence, Werner travels through the heart of the war and, finally, into Saint-Malo, where his story and Marie-Laure’s converge.\n\nDoerr’s “stunning sense of physical detail and gorgeous metaphors” (San Francisco Chronicle) are dazzling. Deftly interweaving the lives of Marie-Laure and Werner, he illuminates the ways, against all odds, people try to be good to one another. Ten years in the writing, a National Book Award finalist, All the Light We Cannot See is a magnificent, deeply moving novel from a writer “whose sentences never fail to thrill” (Los Angeles Times).",
                  author_id: Author.find_by_name("Anthony Doerr").id,
                  book_cover: File.open('app/assets/images/book_covers/light-we-cannot-see.jpg'))

b82 = Book.create(title: "The Woman in Cabin 10",
                  description: "In this tightly wound story, Lo Blacklock, a journalist who writes for a travel magazine, has just been given the assignment of a lifetime: a week on a luxury cruise with only a handful of cabins. At first, Lo’s stay is nothing but pleasant: the cabins are plush, the dinner parties are sparkling, and the guests are elegant. But as the week wears on, frigid winds whip the deck, gray skies fall, and Lo witnesses what she can only describe as a nightmare: a woman being thrown overboard. The problem? All passengers remain accounted for—and so, the ship sails on as if nothing has happened, despite Lo’s desperate attempts to convey that something (or someone) has gone terribly, terribly wrong…\n\nWith surprising twists and a setting that proves as uncomfortably claustrophobic as it is eerily beautiful, Ruth Ware offers up another intense read.",
                  author_id: Author.find_by_name("Ruth Ware").id,
                  book_cover: File.open('app/assets/images/book_covers/woman-in-cabin-10.jpg'))

b83 = Book.create(title: "The Boys in the Boat: ",
                  description: "For readers of Laura Hillenbrand's Seabiscuit and Unbroken, the dramatic story of the American rowing team that stunned the world at Hitler's 1936 Berlin Olympics\n\nDaniel James Brown’s robust book tells the story of the University of Washington’s 1936 eight-oar crew and their epic quest for an Olympic gold medal, a team that transformed the sport and grabbed the attention of millions of Americans. The sons of loggers, shipyard workers, and farmers, the boys defeated elite rivals first from eastern and British universities and finally the German crew rowing for Adolf Hitler in the Olympic games in Berlin, 1936.\n\nThe emotional heart of the story lies with one rower, Joe Rantz, a teenager without family or prospects, who rows not for glory, but to regain his shattered self-regard and to find a place he can call home. The crew is assembled  by an enigmatic coach and mentored by a visionary, eccentric British boat builder, but it is their trust in each other that makes them a victorious team. They remind the country of what can be done when everyone quite literally pulls together—a perfect melding of commitment, determination, and optimism.\n\nDrawing on the boys’ own diaries and journals, their photos and memories of a once-in-a-lifetime shared dream, The Boys in the Boat is an irresistible story about beating the odds and finding hope in the most desperate of times—the improbable, intimate story of nine working-class boys from the American west who, in the depths of the Great Depression, showed the world what true grit really meant. It will appeal to readers of Erik Larson, Timothy Egan, James Bradley, and David Halberstam's The Amateurs.",
                  author_id: Author.find_by_name("Daniel James Brown").id,
                  book_cover: File.open('app/assets/images/book_covers/boys-in-the-boat.jpg'))

b84 = Book.create(title: "The Girls",
                  description: "Northern California, during the violent end of the 1960s. At the start of summer, a lonely and thoughtful teenager, Evie Boyd, sees a group of girls in the park, and is immediately caught by their freedom, their careless dress, their dangerous aura of abandon. Soon, Evie is in thrall to Suzanne, a mesmerizing older girl, and is drawn into the circle of a soon-to-be infamous cult and the man who is its charismatic leader. Hidden in the hills, their sprawling ranch is eerie and run down, but to Evie, it is exotic, thrilling, charged—a place where she feels desperate to be accepted. As she spends more time away from her mother and the rhythms of her daily life, and as her obsession with Suzanne intensifies, Evie does not realize she is coming closer and closer to unthinkable violence, and to that moment in a girl’s life when everything can go horribly wrong.",
                  author_id: Author.find_by_name("Emma Cline").id,
                  book_cover: File.open('app/assets/images/book_covers/the-girls.jpg'))

b85 = Book.create(title: "Me Before You",
                  description: "Lou Clark knows lots of things. She knows how many footsteps there are between the bus stop and home. She knows she likes working in The Buttered Bun tea shop and she knows she might not love her boyfriend Patrick.\n\nWhat Lou doesn't know is she's about to lose her job or that knowing what's coming is what keeps her sane.\n\nWill Traynor knows his motorcycle accident took away his desire to live. He knows everything feels very small and rather joyless now and he knows exactly how he's going to put a stop to that.\n\nWhat Will doesn't know is that Lou is about to burst into his world in a riot of colour. And neither of them knows they're going to change the other for all time.",
                  author_id: Author.find_by_name("Jojo Moyes").id,
                  book_cover: File.open('app/assets/images/book_covers/me-before-you.jpg'))

b86 = Book.create(title: "Mr. Mercedes",
                  description: "In the frigid pre-dawn hours, in a distressed Midwestern city, hundreds of desperate unemployed folks are lined up for a spot at a job fair. Without warning, a lone driver plows through the crowd in a stolen Mercedes, running over the innocent, backing up, and charging again. Eight people are killed; fifteen are wounded. The killer escapes.\n\nIn another part of town, months later, a retired cop named Bill Hodges is still haunted by the unsolved crime. When he gets a crazed letter from someone who self-identifies as the \"perk\" and threatens an even more diabolical attack, Hodges wakes up from his depressed and vacant retirement, hell-bent on preventing another tragedy.\n\nBrady Hartfield lives with his alcoholic mother in the house where he was born. He loved the feel of death under the wheels of the Mercedes, and he wants that rush again.\n\nOnly Bill Hodges, with a couple of highly unlikely allies, can apprehend the killer before he strikes again. And they have no time to lose, because Brady’s next mission, if it succeeds, will kill or maim thousands.\n\nMr. Mercedes is a war between good and evil, from the master of suspense whose insight into the mind of this obsessed, insane killer is chilling and unforgettable.",
                  author_id: Author.find_by_name("Stephen King").id,
                  book_cover: File.open('app/assets/images/book_covers/Bill_Hodges/mr-mercedes.jpg'))

b87 = Book.create(title: "Finders Keepers",
                  description: "“Wake up, genius.” So begins King’s instantly riveting story about a vengeful reader. The genius is John Rothstein, an iconic author who created a famous character, Jimmy Gold, but who hasn’t published a book for decades. Morris Bellamy is livid, not just because Rothstein has stopped providing books, but because the nonconformist Jimmy Gold has sold out for a career in advertising. Morris kills Rothstein and empties his safe of cash, yes, but the real treasure is a trove of notebooks containing at least one more Gold novel.\n\nMorris hides the money and the notebooks, and then he is locked away for another crime. Decades later, a boy named Pete Saubers finds the treasure, and now it is Pete and his family that Bill Hodges, Holly Gibney, and Jerome Robinson must rescue from the ever-more deranged and vengeful Morris when he’s released from prison after thirty-five years.\n\nNot since Misery has King played with the notion of a reader whose obsession with a writer gets dangerous. Finders Keepers is spectacular, heart-pounding suspense, but it is also King writing about how literature shapes a life—for good, for bad, forever.",
                  author_id: Author.find_by_name("Stephen King").id,
                  book_cover: File.open('app/assets/images/book_covers/Bill_Hodges/finders-keepers.jpg'))

b88 = Book.create(title: "End of Watch",
                  description: "Brady Hartsfield, perpetrator of the Mercedes Massacre, where eight people were killed and many more were badly injured, has been in the Traumatic Brain Injury Clinic for five years, in a vegetative state. According to his doctors, anything approaching a complete recovery is unlikely. But behind the drool and stare, Brady is awake, and in possession of deadly new powers that allow him to wreak unimaginable havoc without ever leaving his hospital room.\n\nRetired police detective Bill Hodges, the unlikely hero of Mr. Mercedes and Finders Keepers, now runs an investigation agency with his partner, Holly Gibney, who delivered the blow to Hartsfield's head that put him on the brain injury ward. Brady also remembers that. When Bill and Holly are called to a murder-suicide with ties to the Mercedes Massacre, they find themselves pulled into their most dangerous case yet, one that will put not only their lives at risk, but those of Hodges’s friend Jerome Robinson and his teenage sister, Barbara. Because Brady Hartsfield is back, and planning revenge not just on Bill Hodges and his friends, but on an entire city.\n\nIn End of Watch, Stephen King brings the Hodges trilogy to a sublimely terrifying conclusion, combining the detective fiction of Mr. Mercedes and Finders Keepers with the supernatural suspense that has been his trademark. The result is an unnerving look at human vulnerability and up-all-night entertainment.",
                  author_id: Author.find_by_name("Stephen King").id,
                  book_cover: File.open('app/assets/images/book_covers/Bill_Hodges/end-of-watch.jpg'))

b89 = Book.create(title: "Misery",
                  description: "Paul Sheldon. He's a bestselling novelist who has finally met his biggest fan. Her name is Annie Wilkes and she is more than a rabid reader - she is Paul's nurse, tending his shattered body after an automobile accident. But she is also his captor, keeping him prisoner in her isolated house.",
                  author_id: Author.find_by_name("Stephen King").id,
                  book_cover: File.open('app/assets/images/book_covers/misery.jpg'))

b90 = Book.create(title: "It",
                  description: "To the children, the town was their whole world. To the adults, knowing better, Derry, Maine was just their home town: familiar, well-ordered for the most part. A good place to live.\n\nIt was the children who saw - and felt - what made Derry so horribly different. In the storm drains, in the sewers, IT lurked, taking on the shape of every nightmare, each one's deepest dread. Sometimes IT reached up, seizing, tearing, killing . . .\n\nThe adults, knowing better, knew nothing.\n\nTime passed and the children grew up, moved away. The horror of IT was deep-buried, wrapped in forgetfulness. Until they were called back, once more to confront IT as IT stirred and coiled in the sullen depths of their memories, reaching up again to make their past nightmares a terrible present reality.",
                  author_id: Author.find_by_name("Stephen King").id,
                  book_cover: File.open('app/assets/images/book_covers/it.jpg'))

b91 = Book.create(title: "Under the Dome",
                  description: "On an entirely normal, beautiful fall day in Chester's Mill, Maine, the town is inexplicably and suddenly sealed off from the rest of the world by an invisible force field. Planes crash into it and fall from the sky in flaming wreckage, a gardener's hand is severed as \"the dome\" comes down on it, people running errands in the neighboring town are divided from their families, and cars explode on impact. No one can fathom what this barrier is, where it came from, and when -- or if -- it will go away.\n\nDale Barbara, Iraq vet and now a short-order cook, finds himself teamed with a few intrepid citizens -- town newspaper owner Julia Shumway, a physician's assistant at the hospital, a select-woman, and three brave kids. Against them stands Big Jim Rennie, a politician who will stop at nothing -- even murder -- to hold the reins of power, and his son, who is keeping a horrible secret in a dark pantry. But their main adversary is the Dome itself. Because time isn't just short. It's running out.",
                  author_id: Author.find_by_name("Stephen King").id,
                  book_cover: File.open('app/assets/images/book_covers/under-the-dome.jpg'))

b92 = Book.create(title: "Cell",
                  description: "Witness Stephen King's triumphant, blood-spattered return to the genre that made him famous. Cell, the king of horror's homage to zombie films (the book is dedicated in part to George A. Romero) is his goriest, most horrific novel in years, not to mention the most intensely paced. Casting aside his love of elaborate character and town histories and penchant for delayed gratification, King yanks readers off their feet within the first few pages; dragging them into the fray and offering no chance catch their breath until the very last page.\n\nIn Cell King taps into readers fears of technological warfare and terrorism. Mobile phones deliver the apocalypse to millions of unsuspecting humans by wiping their brains of any humanity, leaving only aggressive and destructive impulses behind. Those without cell phones, like illustrator Clayton Riddell and his small band of \"normies,\" must fight for survival, and their journey to find Clayton's estranged wife and young son rockets the book toward resolution.\n\nFans that have followed King from the beginning will recognize and appreciate Cell as a departure--King's writing has not been so pure of heart and free of hang-ups in years (wrapping up his phenomenal Dark Tower series and receiving a medal from the National Book Foundation doesn't hurt either). \"Retirement\" clearly suits King, and lucky for us, having nothing left to prove frees him up to write frenzied, juiced-up horror-thrillers like Cell.",
                  author_id: Author.find_by_name("Stephen King").id,
                  book_cover: File.open('app/assets/images/book_covers/cell.jpg'))

b93 = Book.create(title: "The Indian in the Cupboard",
                  description: "At first, Omri is unimpressed with the plastic Indian toy he is given for his birthday. But when he puts it in his old cupboard and turns the key, something extraordinary happens that will change Omri's life for ever.\n\nFor Little Bull, the Iroquois Indian brave, comes to life...",
                  author_id: Author.find_by_name("Lynne Reid Banks").id,
                  book_cover: File.open('app/assets/images/book_covers/Indian_in_the_Cupboard/indian-in-the-cupboard.jpg'))

b94 = Book.create(title: "The Return of the Indian",
                  description: "Omri can hardly contain his excitement when he wins first prize in a national writing contest. But he feels he must share the good news with Little Bear, his miniature Indian friend who inspired the winning entry. Omri isn't prepared for what he finds when he ventures back into the cupboard that magically transforms the plastic toy into a real live Iroquois Indian. Desperate to help Little Bear, Omri must find a way to transport himself to the world of the Native Americans. In the process he learns a lot about these amazing people, as well as about himself.",
                  author_id: Author.find_by_name("Lynne Reid Banks").id,
                  book_cover: File.open('app/assets/images/book_covers/Indian_in_the_Cupboard/return-of-the-indian.jpg'))

b95 = Book.create(title: "The Secret of the Indian",
                  description: "The adventure deepens . . . In The Return of the Indian, Omri found he could transport himself and his friend Patrick back in history to the dangerous days of his miniature companions. Now, in the secret of the indian, Patrick time-travels back to the rough-and-tumble frontier age of his cowboy friend, Boone. When he returns to the present day, he's accompanied by a disastrous bit of Texas weather that devastates half of England.",
                  author_id: Author.find_by_name("Lynne Reid Banks").id,
                  book_cover: File.open('app/assets/images/book_covers/Indian_in_the_Cupboard/secret-of-the-indian.jpg'))

b96 = Book.create(title: "The Mystery of the Cupboard",
                  description: "In the fourth book in Bank's acclaimed INDIAN IN THE CUPBOARD saga, Omri and his family move to an old farmhouse, where he finds an ancient notebook that reveals a family secret-and the mysterious origins of his magical cupboard.",
                  author_id: Author.find_by_name("Lynne Reid Banks").id,
                  book_cover: File.open('app/assets/images/book_covers/Indian_in_the_Cupboard/mystery-of-the-cupboard.jpg'))

b97 = Book.create(title: "The Key to the Indian",
                  description: "He felt a draft of cold air. Instinctively he put his arms around his body. Then he looked down at himself and got a shock. He was naked...His first instinct was to hid. he scrambled over the earth floor of the longhouse and ducked under the curtain. Beyond was deeper darkness, but he could make out a sort of room with a raised section against the wall. On this was a mountain range covered with fur, in the shape of a sleeping giant.Omri stared all around, feeling the beginnings of panic. \"Dad!\" he whispered as loudly as he dared...\n\nThere was no answer. Omri felt intensely vulnerable with no clothes on. Cold air embraced his skin from head to foot. He felt a sudden longing to go home. He hadn't reckoned on this--being separated from his dad, it being so dark and cold, so strange, so lonely.",
                  author_id: Author.find_by_name("Lynne Reid Banks").id,
                  book_cover: File.open('app/assets/images/book_covers/Indian_in_the_Cupboard/key-to-the-indian.jpg'))

b98 = Book.create(title: "Allegheny Front",
                  description: "\"Allegheny Front has few sentimental trappings. . . . Men's stubbornness is a rock face, in these intelligent and unpretentious stories, their anger a crown fire, their occasional tenderness a rill. . . . It remains at a distance from judgment, at a remove from easy definitions, unspooling a lucid and often painful history of appetite, exploitation, and bereavement.\"—Lydia Millet, from the introduction\n\nSet in the author's homeland of West Virginia, this panoramic collection of stories traces the people and animals who live in precarious balance in the mountains of Appalachia over a span of two hundred years, in a disappearing rural world. With omniscient narration, rich detail, and lyrical prose, Matthew Neill Null brings his landscape and characters vividly to life.\n\nMatthew Neill Null is the author of the novel Honey from the Lion (Lookout Books). A graduate of the Iowa Writers' Workshop and a winner of the PEN/O. Henry Award, his short fiction has appeared in the Oxford American, Ploughshares, the Mississippi Review, American Short Fiction, Ecotone, and elsewhere. He divides his time between West Virginia and Provincetown, Massachusetts, where he coordinates the writing fellowship at the Fine Arts Work Center.",
                  author_id: Author.find_by_name("Matthew Neill Null").id,
                  book_cover: File.open('app/assets/images/book_covers/allegheny-front.jpg'))

b99 = Book.create(title: "The Loney",
                  description: "If it had another name, I never knew, but the locals called it the Loney - that strange nowhere between the Wyre and the Lune where Hanny and I went every Easter time with Mummer, Farther, Mr and Mrs Belderboss and Father Wilfred, the parish priest.\n\nIt was impossible to truly know the place. It changed with each influx and retreat, and the neap tides would reveal the skeletons of those who thought they could escape its insidious currents. No one ever went near the water. No one apart from us, that is.\n\nI suppose I always knew that what happened there wouldn't stay hidden for ever, no matter how much I wanted it to. No matter how hard I tried to forget...",
                  author_id: Author.find_by_name("Andrew Michael Hurley").id,
                  book_cover: File.open('app/assets/images/book_covers/loney.jpg'))

b100 = Book.create(title: "Oh, The Places You'll Go!",
                  description: "In this joyous ode to life, Dr. Seuss addresses graduates of all ages, from nursery school to medical school, and gives them the get-up-and-go to move mountains with the unrivaled exuberance and charm that have made Dr. Seuss's books favorites for years.",
                  author_id: Author.find_by_name("Dr. Seuss").id,
                  book_cover: File.open('app/assets/images/book_covers/places-youll-go.jpg'))

b101 = Book.create(title: "Green Eggs and Ham",
                  description: "“Do you like green eggs and ham?” asks Sam-I-am in this Beginner Book by Dr. Seuss. In a house or with a mouse? In a boat or with a goat? On a train or in a tree? Sam keeps asking persistently. With unmistakable characters and signature rhymes, Dr. Seuss’s beloved favorite has cemented its place as a children’s classic. In this most famous of cumulative tales, the list of places to enjoy green eggs and ham, and friends to enjoy them with, gets longer and longer. Follow Sam-I-am as he insists that this unusual treat is indeed a delectable snack to be savored everywhere and in every way. \n\nOriginally created by Dr. Seuss, Beginner Books encourage children to read all by themselves, with simple words and illustrations that give clues to their meaning.",
                  author_id: Author.find_by_name("Dr. Seuss").id,
                  book_cover: File.open('app/assets/images/book_covers/green-eggs-and-ham.jpg'))

b102 = Book.create(title: "The Butter Battle Book",
                  description: "The Butter Battle Book, Dr. Seuss's classic cautionary tale, introduces readers to the important lesson of respecting differences. The Yooks and Zooks share a love of buttered bread, but animosity brews between the two groups because they prefer to enjoy the tasty treat differently. The timeless and topical rhyming text is an ideal way to teach young children about the issues of tolerance and respect. Whether in the home or in the classroom, The Butter Battle Book is a must-have for readers of all ages.",
                  author_id: Author.find_by_name("Dr. Seuss").id,
                  book_cover: File.open('app/assets/images/book_covers/butter-book.jpg'))

b103 = Book.create(title: "And to Think That I Saw it on Mulberry Street",
                  description: "A plain horse and wagon on Mulberry Street grows into a story that no one can beat! In this tale, Young Marco allows his imagination to run riot as he travels home from school one day, to the extent that a horse and cart is soon transformed into a chaotic carnival of colourful creatures in his own mind.",
                  author_id: Author.find_by_name("Dr. Seuss").id,
                  book_cover: File.open('app/assets/images/book_covers/mulberry-street.jpg'))

b104 = Book.create(title: "How the Grinch Stole Christmas",
                  description: "\"The Grinch hated Christmas! The whole Christmas season!\n\nNow, please don't ask why. No one quite knows the reason.\"\n\nDr. Seuss's small-hearted Grinch ranks right up there with Scrooge when it comes to the crankiest, scowling holiday grumps of all time. For 53 years, the Grinch has lived in a cave on the side of a mountain, looming above the Whos in Whoville. The noisy holiday preparations and infernal singing of the happy little citizens below annoy him to no end. The Grinch decides this frivolous merriment must stop. His \"wonderful, awful\" idea is to don a Santa outfit, strap heavy antlers on his poor, quivering dog Max, construct a makeshift sleigh, head down to Whoville, and strip the chafingly cheerful Whos of their Yuletide glee once and for all.\n\nLooking quite out of place and very disturbing in his makeshift Santa get-up, the Grinch slithers down chimneys with empty bags and stealing the Whos' presents, their food, even the logs from their humble Who-fires. He takes the ramshackle sleigh to Mt. Crumpit to dump it and waits to hear the sobs of the Whos when they wake up and discover the trappings of Christmas have disappeared. Imagine the Whos' dismay when they discover the evil-doings of Grinch in his anti-Santa guise. But what is that sound? It's not sobbing, but singing! Children simultaneously adore and fear this triumphant, twisted Seussian testimonial to the undaunted cheerfulness of the Whos, the transcendent nature of joy, and of course, the growth potential of a heart that's two sizes too small.\n\nThis holiday classic is perfect for reading aloud to your favorite little Whos.",
                  author_id: Author.find_by_name("Dr. Seuss").id,
                  book_cover: File.open('app/assets/images/book_covers/grinch-stole-christmas.jpg'))

b105 = Book.create(title: "One Fish, Two Fish, Red Fish, Blue Fish",
                  description: "One Fish Two Fish Red Fish Blue Fish is a 1960 children's book by Dr. Seuss (Theodor Seuss Geisel). A simple rhyming book for learner readers, it is a book with a freewheeling plot about a boy and a girl, and the many amazing creatures they have for friends and pets. One Fish Two Fish Red Fish Blue Fish was part of the Beginner Book Video series which included Oh, the Thinks You Can Think! and The Foot Book.",
                  author_id: Author.find_by_name("Dr. Seuss").id,
                  book_cover: File.open('app/assets/images/book_covers/one-fish-two-fish.jpg'))



# TODO Start here

# SAMPLE BOOK
# b100 = Book.create(title: "",
#                   description: "",
#                   author_id: Author.find_by_name("").id,
#                   book_cover: File.open('app/assets/images/book_covers/{ FILE_NAME }'))


# Adding Books to Shelves

s1.book_ids = [b1.id, b6.id, b8.id, b11.id, b20.id, b46.id, b50.id, b58.id, b88.id, b90.id, b95.id]
s2.book_ids = [b1.id, b6.id, b8.id, b50.id]
s3.book_ids = [b20.id, b46.id, b88.id, b90.id, b95.id]
s4.book_ids = [b11.id, b46.id, b58.id]

REVIEWS = [
    { body: "This book was amazing!", rating: 5 },
    { body: "I really like the beginning part and the ending. The middle was okay", rating: 4 },
    { body: "I love book!", rating: 5 },
    { body: "It was really okay", rating: 3 },
    { body: "I think they could have done a better job with the main character.", rating: 4 },
    { body: "Random review", rating: 3 },
    { body: "I like to imagine that the ending took place on a bridge in the rain", rating: 4 },
    { body: "I hated everything about this", rating: 1 },
    { body: "The author clearly doesn't know how to write.", rating: 2 },
    { body: "My friend recommended this to me.. I regret my decision", rating: 1 },
    { body: "WIILLSSOOONNNN!!!", rating: 4 },
    { body: "Harry Potter was better", rating: 4 },
    { body: "This book is very mediocre", rating: 2 },
    { body: "I think the movie was better", rating: 3 },
    { body: "The book was so much better than the movie!", rating: 5 },
    { body: "Why can't my life be more like this??", rating: 5 },
    { body: "I could really see myself as the main character's best friend in RL", rating: 4 },
    { body: "What if the book was actually about a hippo?", rating: 3 },
    { body: "They should rewrite this with more humor", rating: 2 },
    { body: "This book was life changing", rating: 5 },
    { body: "This book was not life changing", rating: 1 },
    { body: "I belive that the characters felt too real. I thought I was reading a fictional story, but it felt like an autobiography of a lion tamer.", rating: 2 },
    { body: "I don't believe that the events in the book every truly happened...", rating: 2 },
    { body: "LOOOOVVVVEEEEEDDD IT!", rating: 5 },
    { body: "Bear with me here... but what if the bad guy was actually the good guy all along? Mind = Blown", rating: 4 },
    { body: "This was absurd", rating: 2 },
    { body: "It was juuuusstt right", rating: 3 },
    { body: "I give this 3 stars", rating: 3 },
    { body: "I filled out this review just to feel like I belong", rating: 4 },
    { body: "I found this book on the side of the road. Best.Discovery.Ever.", rating: 5 }
]

def rand_in_range(from, to)
  rand * (to - from) + from
end

def rand_time(from, to=Time.now)
    Time.at(rand_in_range(from.to_f, to.to_f))
end

first = b1.id
last = b105.id

(first..last).each do |i|

    review = REVIEWS.sample
    Review.create(rating: review[:rating],
                  body: review[:body],
                  book_id: i,
                  user_id: u1.id,
                  date: rand_time(10.days.ago))

    review = REVIEWS.sample
    Review.create(rating: review[:rating],
                  body: review[:body],
                  book_id: i,
                  user_id: u2.id,
                  date: rand_time(10.days.ago))

    review = REVIEWS.sample
    Review.create(rating: review[:rating],
                  body: review[:body],
                  book_id: i,
                  user_id: u3.id,
                  date: rand_time(10.days.ago))

    review = REVIEWS.sample
    Review.create(rating: review[:rating],
                  body: review[:body],
                  book_id: i,
                  user_id: u4.id,
                  date: rand_time(10.days.ago))

    review = REVIEWS.sample
    Review.create(rating: review[:rating],
                  body: review[:body],
                  book_id: i,
                  user_id: u5.id,
                  date: rand_time(10.days.ago))
end
