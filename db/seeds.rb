# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Course.destroy_all 
Chapter.destroy_all

User.create(email: 'test@test.com', password: '123456', password_confirmation: '123456')
course = Course.create(name: 'Blockchain fundamentals')

Chapter.create(name: 'Why Blockchain?', level:1, content: 'In 2010, a programmer paid 10,000 Bitcoins for 2 pizzas, roughly worth $30. In 2018, that same number of bitcoins is estimated at $83 million in value!

The exchange of Bitcoin is possible due to an underlying technology that secures and simplifies transactions removing the need for a bank or a central authority. Anyone with an internet connection has the freedom to own and exchange this digital currency. The powerful architecture that drove this revolution was blockchain. Businesses started to realize the potential of blockchain and are rapidly mobilizing to understand and implement it. But, what exactly is blockchain and what makes it so transformative?

After you complete this course, you will have a basic foundation of blockchain principles. You will also have the opportunity to create your own mini blockchain where you will transform these concepts into code.',
summary: 'In 2010, a programmer paid 10,000 Bitcoins for 2 pizzas, roughly worth $30', order: 1, course: course)

Chapter.create(name: 'What is Blockchain?', level:1, content:'The blockchain is similar to a permanent book of records that keeps a log of all transactions that have taken place in chronological order.

Let’s envision a bank transaction in which there are three parties: the sender, the bank, and the recipient. In order to ensure that there are no fraudulent transactions, the bank acts as the central authority between the parties.

The blockchain also logs transactions between senders and receivers, except there is no bank or central authority. Instead, the blockchain relies on a public network of computers to verify the transaction. The blockchain is just an accurate, and permanent record of all the transactions that have happened amongst the members in that blockchain’s network. In this analogy, each block in the blockchain represents a transaction, and each transaction is connected to the prior transaction to form the entire connected blockchain.', order: 2, course: course)

Chapter.create(name: 'The Blockchain Network', level:1, content: "So how do Blockchain-based applications like Bitcoin and Ethereum validate transactions without a central authority?

  In the blockchain, there are many participants in the network that are constantly checking to ensure that each transaction is valid. Each participant is a computer that owns a copy of the blockchain. These participants cross-reference their copy of the blockchain each time a new block is being introduced. Because this validation depends on multiple participants, the digital record is “decentralized”.
  
  In order for a new block to be added, 51% of all of the participants in the blockchain network must verify that the new block is not fraudulent. Once a block has been verified as a valid transaction, it is added to each participant’s copy of the blockchain.
  
  By having the majority of participants validate a new transaction, the blockchain removes the need for a central authority and automates the completion of transactions, reducing transaction fees while ensuring a high level of security.", order: 3, course: course)

Chapter.create(name: 'What are Blocks in the Blockchain?', level:1, content:'Just like bricks are the building blocks of a house, blocks themselves are the building blocks of a blockchain.

  A block contains transaction data and other important details related to the creation of that block, such as the time when it was created and other unique information. In order to create a block, we must have a record that we wish to store.
  
  In this lesson, we will be discussing transaction data. This is just one example, but blocks can hold different types of data depending on what the blockchain is used for. However, at its heart, a block will always contain a timestamp or the data regarding the time when the block was created. A block will also always contain a unique hash or a unique code produced by combining all the contents within the block itself — also known as a digital fingerprint. Lastly, a block will also always contain a previous hash or a reference to the prior block’s hash. This reference to the prior block is how blocks chain to one another. We will dive into more details about the hash later. These attributes about a block are what make it part of a blockchain structure.', order: 4, course: course)
  
Chapter.create(name: 'Hashing', level:1, content:'Hashing is an application of cryptography that is fundamental to the design of the blockchain. It is a way to generate a seemingly random, but calculated string of letters and numbers from any input. This is accomplished by the use of a hash function.

  Think of a hash function as a machine that takes an object, such as an apple, and turns it into a varying combination of letters and numbers, such as “1a432bf”. The output (“1a432bf”) is known as the hash of the input, the apple. If you give the machine two apples instead of one, it will return a different hash (such as “26f5ce1”).
  
  There are many types of machines out there, so the resulting hash varies from machine to machine. Similarly, there are many types of hash functions available. Blockchain uses a cryptographic hash function, meaning that the output is random but deterministic. This means the same input will always produce the same hash. That process is one-way, so the output (hash) cannot be used to produce the original input.', order: 5, course: course)

Chapter.create(name: 'The Genesis Block', level:1, content: "To recap, a blockchain is similar to a permanent book of records — it keeps an accurate unchanging record of all data, or transactions, stored in chronological order. Each block has a reference to the block’s previous hash. This is how blocks are “chained” together. If a block’s contents are tampered with, the block’s hash changes and the chain breaks, making it difficult to successfully tamper with any one piece of the chain.

Since all blocks in the blockchain have a reference to the previous block, the first block is a little different than the rest. It is known as the Genesis Block. The problem, however, is that the Genesis Block does not have a block before it. So it wouldn’t make sense to have a previous hash stored inside it. To resolve this minor issue, the value of the previous hash is typically hard-coded into the Genesis Block with the default value of zero.", order: 6, course: course)

#parent seed file

