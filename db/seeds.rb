# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

Test.destroy_all
Subscription.destroy_all
User.destroy_all
Chapter.destroy_all
Course.destroy_all 



i = 1
10.times do
  User.create(email: "test#{i}@blockmemo.com", password: '123456', password_confirmation: '123456', admin:false, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone:Faker::PhoneNumber, address:Faker::Address.street_address )
  puts "test#{i}@blockmemo.com"
  i += 1
end

User.create(email: "arthur@blockmemo.com", password: '123456', password_confirmation: '123456', admin:true, first_name: "Arthur", last_name: Faker::Name.last_name, phone:Faker::PhoneNumber, address:Faker::Address.street_address )
puts "arthur@blockmemo.com"

User.create(email: "sino@blockmemo.com", password: '123456', password_confirmation: '123456', admin:true, first_name: "Sino", last_name: Faker::Name.last_name, phone:Faker::PhoneNumber, address:Faker::Address.street_address )
puts "sino@blockmemo.com"

User.create(email: "ramiro@blockmemo.com", password: '123456', password_confirmation: '123456', admin:true, first_name: "Ramiro", last_name: Faker::Name.last_name, phone:Faker::PhoneNumber, address:Faker::Address.street_address )
puts "ramiro@blockmemo.com"

User.create(email: "alan@blockmemo.com", password: '123456', password_confirmation: '123456', admin:true, first_name: "Alan", last_name: Faker::Name.last_name, phone:Faker::PhoneNumber, address:Faker::Address.street_address )
puts "alan@blockmemo.com"




#course number 1

course = Course.new(name: 'Blockchain fundamentals')

file = URI.open("https://images.pexels.com/photos/8370332/pexels-photo-8370332.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg")

course.picture.attach(io: file, filename:"blockchainfund_logo.jpg", content_type:'image/jpg')

course.save!

Chapter.create(name: 'Chapter I : What is Blockchain ? ', level:1,


content: 'The blockchain is similar to a permanent book of records, a record, a ledger, a set of logs. Blockchain keeps a log of all transactions that have taken place in chronological order.
Let’s envision a bank transaction in which there are three parties: the sender, the bank, and the recipient. In order to ensure that there are no fraudulent transactions, the bank acts as the central authority between the parties.
The blockchain also logs transactions (registra transazioni) between senders and receivers, except there is no bank or central authority. Instead, the blockchain relies on a public network of computers (nodes o nodi) to verify the transaction. 
The blockchain is just an accurate, and permanent record of all the transactions that have happened amongst the members in that blockchain’s network. 
In this analogy, each block in the blockchain represents a transaction, and each transaction is connected to the prior transaction to form the entire connected blockchain.
<br><br><strong>
<br>
Key terms:
</strong><br><br>
●	Block: A block is a record or individual transaction or piece of data that is being stored within the blockchain.<br>
●	Blockchain: A blockchain is a continuously growing list (“chain”) of records (“block”), called blocks, which are linked chronologically and secured using cryptography.<br>
●	Blockchain Network = Blockchain
<br><br>
<strong>How do Blockchain-based applications like Bitcoin and Ethereum validate transactions without a central authority?</strong><br><br>
In the blockchain, there are many participants in the network that are constantly checking to ensure that each transaction is valid. Each participant is a computer that owns a copy of the blockchain. 
Participants = lots of computers = nodes = they validate each transaction
These participants cross-reference their copy of the blockchain each time a new block is being introduced. Because this validation depends on multiple participants, the digital record is “decentralized”.
In order for a new block to be added, 51% of all of the participants in the blockchain network must verify that the new block is not fraudulent. Once a block has been verified as a valid transaction, it is added to each participant’s copy of the blockchain.
By having the majority of participants validate a new transaction, the blockchain removes the need for a central authority and automates the completion of transactions, reducing transaction fees while ensuring a high level of security.
<br><br>
<strong>Key Terms:</strong>
<br><br>
●	Blockchain Network: The blockchain network and blockchain are terms used interchangeably. They represent the entire blockchain from the structure itself to the network that it is a part of.<br>
●	Decentralization: The concept in which participants work together to validate transactions without relying on a central authority.<br>
●	Participant (computer or node): A client (computer or node) that owns a copy of the blockchain and verifies transactions across the network (51% rule). They participate in the network <br><br>',

summary: 'The blockchain is similar to a permanent book of records, a record, a ledger, a set of logs. Blockchain keeps a log of all transactions that have taken place in chronological order....', order: 1, course: course)

3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end

Chapter.create(name: 'Chapter II : What are Blocks in a Blockchain ?', level:1, 

content:'<h2><strong>Blocks</strong></h2><br><br>
The Block is the brick of the Blockchain. It contains data, different types of data depending on what the Blockchain is used for. <br>
A block contains:<br>
●	Timestamp → the date when the data was recorded/stored and the block created. Determines the position on the blockchain.<br>
●	Transaction Data - Data to be stored in the block<br>
●	Unique Hash → unique code produced to identify the block. The hash is produced by combining all the contents within the block itself — also known as a digital fingerprint<br>
●	Previous Hash → reference to the previous block’s hash<br><br
<br>
<br>
<h2><strong>Hashing</strong></h2>
<br>
<br>
Hashing is an application of cryptography, a fundamental process of the Blockchain. Hashing is the process of giving an alphanumeric value to an input, which is accomplished by the use of a hash function.
The hash is like a machine which take an object, for ex. an apple and turns it into an random alphanumeric string ⇒ Hash of the input or hash of the apple.
There are several machine who turns the object into different hash numbers. And we have several different hash functions. Blockchain uses a cryptographic hash function meaning that the output is random but deterministic ⇒ the same input will always produce the same hash. The process is one-way, so the output (hash) cannot be used to produce the original input.
<br>
<br>
<strong>Key Terms:</strong>
<br>
<br>
●	Deterministic: The same input will always produce the same output, but that output cannot produce the original input.<br>
●	Hash: Unique alphanumeric code. A calculated string of letters and numbers produced from a specific input.<br>
●	Hash Function: A function that takes in an input of a random size, performs hashing on the input, and generates a seemingly random output of a fixed size, also known as the hash.<br>
<br>
<br>
<h2><strong>Recap Blockchain</strong></h2>
<br><br>
Blockchain is a public ledger (register) that records logs into blocks, chaining them together
Each block contains data (for example a transaction) and depending on the blockchain data can be different.
Blocks in the chain are validated by the participants in the blockchain, participants are computers (nodes), the validation in carried out by all the nodes and once validated by the 51% of participants, a new block is created. Thus, the blockchain removes the need for a central authority and automates the completion of transactions, reducing transaction fees while ensuring a high level of security.
Once the block is created, also an unique code called Hash is produced to identify the block. The hash is produced by combining all the contents within the block itself — also known as a digital fingerprint.
If a block’s contents are tampered with, the block’s hash changes and the chain breaks, making it difficult to successfully tamper with any one piece of the chain.
Since all blocks in the blockchain have a reference to the previous block, the first block is a little different than the rest. It is known as the Genesis Block. The problem, however, is that the Genesis Block does not have a block before it. So it wouldn’t make sense to have a previous hash stored inside it. To resolve this minor issue, the value of the previous hash is typically hard-coded into the Genesis Block with the default value of zero.
Genesis Block: The genesis block is the first block on the blockchain and it is typically hard-coded into the blockchain structure. Being the first block on the blockchain, it does not have a link to a previous hash.
',

summary: 'The Block is the brick of the Blockchain. It contains data, different types of data depending on what the Blockchain is used for...', order: 2, course: course)
3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end

Chapter.create(name: 'Chapter III : Diving Deeper into Blockchain', level:1, 

content: '
<strong>1. Gathering Blockchain Transactions</strong>
<br>
<br>
Unvalidated transactions → As transactions are being carried out, they need to be validated. The Unvalidated transactions are placed in a special location called Mempool, that collects all of the unvalidated transactions.
The latest unvalidated transactions in the mempool are broadcasted to the blockchain network, to all participants to be validated.
Once a block is full, the next set of transactions will have to wait in the memory pool. At this point, the block is said to be unconfirmed, and the transactions inside the block are said to be invalidated.
<br>
<br>
<strong>Key Terms:</strong>
<br>
<br>
●Transactions: An exchange of value among participants on the blockchain network.<br>
●Participants: Individuals, normal people accessing the blockchain network through computers to exchange value and make exchanges, transactions.<br>
<br>
<br>
<strong>2.Participants on the blockchain network are anonymous users on their computers</strong>
<br>
<br>
●Unconfirmed: *Blocks and transactions that are yet to be verified.
<br>
<br>
How do we Add Blocks to the Blockchain?
<br>
Process to add Blocks
<br>
1.	Verify transactions → make sure the transaction hasn’t been swapped or duplicated
2.	Establish a consensus in the network → Everybody needs to agree that the transaction is valid and not fraudulent
3.	Assuming everyone knows how to verify a transaction, a random participant broadcasts its block to the entire network so that everyone has a copy of the blockchain. → once 51% agrees on that transaction, the block is validated and created ⇒ Consensus has been reached
<br>
<br>
<strong>3. Blockchain Integrity and Immutability</strong>
<br>
<br>
How do we assure and maintain the Blockchain integrity?
Hashing - process of creating a random alphanumeric string from an input → Random and deterministic (1 input = 1 output; from the output we cannot go back and obtain the original input)
Each block has a hash and a previous hash linking him to the previous block.
If someone tries to tamper the hash, the following block’s previous has will not correspond, breaking the chain. ⇒ in this way, the records in the blockchain cannot be altered. In other words, the records are said to be immutable.
<br>
<br>
<strong>Key Terms:</strong>
<br>
<br>
●	Hashing: Generating a random string of characters from a given input.<br>
●	Immutable: Something whose records can’t be changed.<br>
<br>
<br>
But what if someone tampers with a block and recalculates the hashes for every single block? Does hashing still guarantee that the blockchain is fully secure? Let’s find out in the next exercise.
What if an attacker tampers with a block and then somehow covers their tracks by recalculating the hash of each subsequent block to make the blockchain valid once again? Let’s explore this concept through an example.
Let’s say we have three blocks: A, B, and C with hashes X123, Y456, and Z789 that represent the state of each block. If an attacker tampers with Block A, its contents get changed, so its hash gets changed — let’s say the hash is changed from X123 to 123X. 
Block B no longer points to Block A because the previous hash X123 no longer matches with the new hash 123X. The only way for the attacker to make the chain valid is by fixing this mismatch. For Block B to point to Block A, its previous hash needs to be changed from X123 to 123X.
However, this also counts as tampering with Block B’s data. Thus, its hash also gets changed. If the attacker repeats this process for all subsequent blocks, they will have succeeded in creating a valid copy of the blockchain!
<br>
<br>
<strong>Key Terms:</strong>
<br>
●	Recalculating Hashes: Replacing the incorrect hash with a “correct” one to validate the chain.
<br>
<br>
<strong>4.Proof-of-Work</strong>
<br>
Just like how the bank has an accountant to verify transactions manually, the blockchain has a clever technique called Proof-of-Work that accomplishes two important goals:
<br>
●	It makes it difficult for participants to modify blocks by re-calculating hashes.<br>
●	It relies on bulletproof cryptography instead of anonymous participants to verify transactions.<br>
This essentially creates a trustless system and is the main reason why the blockchain is so secure and powerful. Let’s see how Proof-of-Work actually works in the next exercise.
Proof-of-Work - A security feature in blockchain to prevent attackers from easily taking over the blockchain.
',

summary: 'Unvalidated transactions → As transactions are being carried out, they need to be validated. The Unvalidated transactions are placed in a special location called Mempool, that collects all of the unvalidated transactions..',order: 3, course: course) 
3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end
 
Chapter.create(name: 'Chapter IV : What is Proof-of-Work (POW) ? ', level:1, 

content:'Proof-of-Work is another layer of security added to the validation of the blocks in the blockchain.<br>
Given that Participants to the validation of the blocks are humans (anonymous behind a computer), we cannot really trust them, so,  a special group of participants, also known as miners, 
now need to solve a problem in order to be eligible to broadcast their block. The problem, also known as Proof-of-Work, takes the form of a guessing game that involves the use of hashing.
<br>
<br>
The hash function that’s most commonly used to create the hash for the block is the SHA-256. Miners first guess a nonce value, which is then combined with the contents of the block (i.e transactions, timestamp, hash, and previous hash). 
They repeat this process until the desired hash is generated.The first miner to produce a proof broadcasts their unconfirmed block together with the correct nonce value.<br>
The rest of the network then verifies the calculation. If the majority of the participants agree, the Proof-of-Work for the block is now complete and the block has now been confirmed! The network then moves on to work on the next block.
Here’s an example of a simple problem — find a number which, when combined with the unconfirmed block’s contents, produces a hash whose first four digits equals 0000. 
Every participant uses their computer and a hash function (typically SHA-256) to find a number that generates a correct hash. Since this a random guessing game, everyone usually starts out with 0 and increases their guesses until they produce an acceptable hash.
<br>
<br>
<br>
<strong>Key Terms:</strong>
<br>
<br>
●	Miners: Special participants who calculate the Proof-of-Work to mine new blocks.<br>
●	Nonce: A number to be guessed by miners which when combined with the block produces an acceptable hash.<br>
', 
summary:'Proof-of-Work is another layer of security added to the validation of the blocks in the blockchain....', order: 4, course: course)
3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end

Chapter.create(name: 'Chapter V :	Diving Deeper into Proof-of-Work ', level:1, 

content: "The blockchain participants always consider the longest chain to be the correct one. If someone is able to create the longest chain of blocks (even if the blocks are fake), the network is forced to accept the new chain.
The reason for this is simple — the blockchain network assumes that the longest chain has the most amount of computational work done in finding the Proof-of-Work for each block. Therefore, it is reasonable for the network to think that the longest chain contains the most proven record of transactions.
If a dishonest participant decides to tamper with a block, they would have to solve the Proof-of-Work for each subsequent block in order to introduce the tampered block into the network. This is computationally infeasible and almost impossible!
Furthermore, while the participant is busy finding the Proof-of-Work for each block, newer blocks are being added to the blockchain at a faster rate. The participant soon finds out that they are playing a losing battle against the entire network.
What is the key takeaway from all this? A block gets increasingly more tamper-proof as newer blocks are added next to it. Proof-of-Work makes it hard to get through the entire blockchain and allow someone to introduce a fake transaction.
<br><br><br>
<strong>Key Terms:</strong>
<br><br>
●	Longest Chain: The most trusted chain with the largest amount of computational work done in calculating the Proof-of-Work.<br><br>
Let’s review the key terms:<br><br>
●	Transaction: An exchange of value among participants on the blockchain network.<br><br>
●	Participants: Individuals accessing the blockchain network through computers to exchange value.<br><br>
●	*Unconfirmed: *Blocks and transactions that are yet to be verified.<br><br>
●	Consensus: The process of agreeing to the transactions on the blockchain network.<br><br>
●	Hashing: Generating a random string of characters from a given input.<br><br>
●	Immutable: Something whose records can’t be changed.<br><br>
●	Recalculating Hashes: Replacing the incorrect hash with a “correct” one to validate the chain.<br><br>
●	Proof-of-Work: A security feature in blockchain to prevent attackers from easily taking over the blockchain.<br><br>
●	Trustless: A feature of blockchain that states how the system doesn’t rely on any participant to verify transactions.<br><br>
●	Longest Chain: The most trusted chain with the largest amount of computational work done in calculating the Proof-of-Work.<br><br>
",
summary: 'The blockchain participants always consider the longest chain to be the correct one. If someone is able to create the longest chain of blocks (even if the blocks are fake), the network is forced to accept the new chain...', order: 5, course: course)
3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end
Chapter.create(name: 'Chapter VI : How BlockChain can be useful ? ', level:1, 

content: "<strong>Scenario</strong>
<br>
<br>
We have everything available at our fingertips, except the trust on the other party, how do we validate the authenticity of the things you get online? How do you know the medicine you import are real? How you know your data is safe and not hacked?<br>
Pain Point ⇒ trust<br>
Solution ⇒ Blockchain<br>
<br>

There has always been a dire need for a system that can assure us that whatever we are buying is authentic, Whatever data we are sharing is safe and secure.<br>
There has always been a need of a system that is reliable and robust such that trust is no longer a barrier for businesses and individuals for getting things done.<br>
The solution to all of these pain points lies in the Blockchain technology. You might have heard about
various crypto currencies like Bitcoin ,Ether, Ripple etc and all of these crypto currencies are powered by Blockchain.
",
summary: 'Two examples if scenarios with the use of BlockChain', order: 6, course: course)
3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end

#parent seed file

#course number 2

course = Course.new(name: 'Blockchain and its Properties')




file = URI.open("https://images.pexels.com/photos/1099339/pexels-photo-1099339.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260.jpg")

course.picture.attach(io: file, filename:"pexels-worldspectrum-1099339.jpg", content_type:'image/jpg')

course.save!


Chapter.create(name: 'Chapter I : What is Blockchain?', level:2, 

content: 'Blockchain is a tamper-proof distributed digital ledger (register). <br><br>
Characteristics and Properties of Blockchain<br>
●	Safe<br>
●	Secure<br>
●	Transparent<br>
●	Distributed<br>
●	Decentralized → not controlled by a single authority (centralized)<br><br>
Blockchain can be compared to the invention of the wheel, motor, internet that revolutionized the world → 4th Industrial Revolution<br><br>


Simple Example to Understand of how Blockchain Works<br>
Blockchain = Excel Sheet<br>
●	Blockchain is generally shared among several computers which owns a copy of the blockchain (excel sheet).<br>
●	These computers are referred to as nodes<br>
●	Every node on the blockchain network can access the same blockchain (the same excel sheet)<br>
●	When a transaction gets executed, the blockchain gets automatically updated	<br>
●	Transactions (set of data) are stored in blocks. Any block can contain a limited number of transactions<br>
●	Blockchain is secured through cryptography<br><br>
<h2>Decentralization</h2><br><br> 
Decentralizing means storing your assets (money, documents, data in a network ( on the internet) which can be easily accessed.<br>
Every user has plein control of his assets and does not need to rely on any third-party or middle man, or institution or centralized authority.<br>
You place your trust in the network instead of a single bank or intermediary like a government<br>
' ,
summary: "Blockchain is a tamper-proof distributed digital ledger" , order: 1, course: course)

3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end

Chapter.create(name: "Chapter II : Features of Blockchain" , level:2, 

content: '
1.	Decentralization
2.	Distributed Ledger
3.	Immutability
4.	Consensus

1.	Decentralization
a.	User controls their data
b.	No central point of failure and difficult to hack
c.	Difficult hacking
d.	Reduce chances of data tampering and misuse of data
e.	Lower transaction costs (because there is no intermediary nor third-parties)
f.	Fast and flexible transactions
g.	Blockchain is accessible by anyone on the network and changes are accessible to anyone as well
2.	Distributed Ledger
a.	The distributed ledger records every transaction happening in the network
b.	Every node has access to a copy of the updated ledger
c.	Every update and change are reflected almost real-time
Advantages of distributed ledger
●	Easier to track movement of goods
●	Single ledger → all transactions are recorded in 1 single ledger
●	Easier to access, review, manage and verify
●	Reduce the complexity of managing multiple ledgers
Key Terms
●	Ledger → Record of all transaction
●	Distributed → The ledger is shared with all the person in the same network

3.	Immutability
How does immutability work?
Once data is recorded inside the blockchain is almost impossible to tamper with
Example - Immutability works exactly like to send an email → When you send a document through an email to your friends, you cannot edit or delete that email.
The only way would be to ask all of your friends to delete that mail, which is quite difficult.
4.	Consensus
a.	After every transaction, a new block is created
b.	The last participant broadcast the block to all the nodes to be verified.
c.	Once the block is verified, it is added to the blockchain 
d.	This process of validation is called consensus
e.	2 main consensus mechanism used today
i.	Proof-of-Work - PoW
ii.	Proof-of-Stake - PoS

5.	Solution of Double Spending Problem in the Digital Currencies
Double Spending is a typical problem of digital currency which has been solved by Blockchain through the consensus mechanism - One of the serious initial concerns with Bitcoin.
a.	This is a famous issue that Blockchain solves through its consensus mechanism
b.	Double Spending - spending twice the same currency units
c.	Digital currencies can be reproduced easily (like every digital assets or products)
d.	Ex. If a friends share a photo with you through WhatsApp, there are 2 pictures, one in your friend’s phone and one in yours ⇒ Double Spending

How does Consensus Prevent Double Spending?
Ex.
There are 3 people, Lyra, Phil and Matt
●	Lyra has only 1 Bitcoin with her. 
●	Lyra sends that Bitcoin to Phil. Simultaneously, Lyra does another transaction and sends the same Bitcoin to Matt as well. 
●	The second transaction will be rejected by the participating nodes. Why? Let us understand how. 
●	Every transaction before getting committed to the Blockchain is verified against the ledger records by the nodes. 
●	So in the first case, when Lyra sends money to Phil, the transaction will be validated against the ledger which will show that Lyra has one Bitcoin with her, that means that she can transfer 1 Bitcoin to Phil. Thus making it a valid transaction. 
●	But in the second transaction, which Lyra does to Matt when the transaction is validated against the ledger, it gets rejected as there is no Bitcoin left with Lyra so she can’t make any transaction to Matt. Thus mitigating the problem of double spending.
', 
summary:' In this course you will learn about decentralization, distributed Ledger, Immutability and Consensus' , order: 2, course: course)

3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end


Chapter.create(name: 'Chapter III : Components of a Block - Part 1 ', level:2, 

content: "Block - Place where the data of a transaction is stored
A block is made up of 3 main elements:
1.	Data, transactions and Information- Any piece of information contained in the block (it depends on the blockchain)
2.	Hash
3.	Hash of the previous Block

1.	Data, transactions and Information
Data contained in each block, depends on the type of Blockchain

2.	Hash
Unique identifier for the block and the data it contains → combination of the data inside the block.
Hash is always unique and 2 blocks cannot have the same hash number, exactly like fingerprints.
As soon as a block is created the hash is generated simultaneously.

Tampering with the block, changes the hash → so if the hash changes, the block is tampered with and it is not the same block.

3.	Hash of the Previous Block
Hash of the previous block links and chains the following block with the previous one.
Ex. Block 4 contains hash of block 3 and block 3 contains hash of block 2 and so on.

Any change in the data of a block, leads to a change in its hash
As discussed earlier any change in the data of a block leads to a change in its hash. In the given figure when we change the data in block 2, the hash of block 2 gets changed as well, which makes the whole blockchain unstable. 
This happens because each block contains hash of the previous block. When the 2nd block is tampered with,
the old hash becomes invalid and a new hash is generated for the block. This affects all the subsequent blocks in the chain and thus making all of them invalid. 
This unique property of the blockchain makes it transparent and secure, as in any case of data tampering whole network gets to know which block got compromised in the blockchain.
" , 
summary:"Summary", order: 3, course: course)
3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end


Chapter.create(name: 'Chapter IV : Components of a Block - Part 2', level:2, 

content: " 4.	Consensus Mechanism
Blockchain consensus algorithms.
Consensus protocols are one of the very crucial aspects of blockchain technology. 
Consensus Protocol → agreement on something that makes blockchain reliable → through the consensus over the blockchain, the network validate the data added to the Blockchain → Create fairness and equality
Types of Consensus Mechanism

Proof-of-Work
Proof-of-Stake
Differences

Proof-of-Work (PoW)

Characteristics of PoW
●	Born in 1990
●	Used by any crypto projects
●	Uses computational power to solve complex mathematical problems → once a problem is solved, a new virtual coin is created (miners)
●	Create new virtual coins
As a miner, a user is required to solve a complex mathematical problem to get rewarded by a new virtual coins for example bitcoins in the Bitcoin network. So let us understand how proof of work and mining works in the context of Bitcoin.
How does Proof-of-Work Work in the Bitcoin Blockchain


Mempool → a recipient which contains all not-yet-verified transactions
When there are many requests for transactions, miners cannot manage all the transactions at once, so the mempool gets bigger.
We need to have a small mempool → having a big mempool means that Bitcoin Blockchain is not scalable.
●	Not-verified transactions are bundled in a mempool
●	Miners needs to verify the transactions -_> the process of verification is called mining
●	To verify the transaction, miners need to solve a complex math puzzle → Puzzles are asymmetric, which means hard to solve, but easy to verify by the network
●	Puzzle solving doesn’t require skill set of the user, but only computational power ⇒ more energy and electricity → hence the environmental problem ⇒ Computer with more powerful processors
●	Average time to solve  puzzle → 10 minutes
●	Over time miners start finding it easier to solve the puzzle ⇒ therefore the block generation time also gets reduced from the proposed 10 minutes ⇒ Hence, to increase the difficulty level of the puzzle and to make it more complex the puzzle is revised after every 14 days.
●	This in turn means that more computational power is required to solve the puzzle henceforth. 
●	The miner who solves the puzzle first is rewarded with newly minted Bitcoins and network transaction fees.
●	The verified transaction forms a new block, added then to the blockchain
Challenge of the Proof-of-Work
Waste of computing power and electricity


Proof-of-Stake (PoS)

Characteristics of Proof-of-Stake (PoS)
●	Born in 2011
●	The block is added by a validator, chosen randomly by a randomized system
●	The selection of a block creator is decided by 2 factors:
○	How much of that cryptocurrency the validator is owning
○	For how long he has been hodling that crypto.
●	Contrary to the proof of work, where the block creation depends on the computational power, the block creation in Proof of stake is directly proportional to the user’s holding of the cryptocurrency or the underlying token of the network.
●	In proof of stake consensus mechanism, blocks are forged or minted, not mined like in PoW. And users who create these blocks are not known as miners instead they are known as forgers.
●	Block Creation in PoS is directly proportional to users’ holding the crypto
●	Block Creators are known as forgers
●	Forgers (or Block creators) lock up some of their coins.
●	For verifying the transactions and forging the block, forgers need to lock up some of the points at stake. In this situation the coins are held in the escrow (held as a  guarantee) and in case the users are found to be involved in validating a fraudulent transaction, the stakes get slashed and they also lose their right to choose and as a forger in the future. The basic assumption behind this mechanism is the fact that because the coins are at stake they will be highly motivated to validate the right transactions. In proof of stake mechanism crypto currency units are created initially at the time of launch of the currency and their numbers are also fixed. 
●	PoS involves a negligible consumption of energy that’s why block creators are not rewarded with the network coins but with the fees
", 
summary:"Summary", order: 4, course: course)

3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end


Chapter.create(name: 'Chapter V : Components of a Block - Part 3', level:2, 

content: "
5.	Hash and its Hash Functions (Hashing)
Hashing is an application of cryptography, a fundamental process of the Blockchain. Hashing is the process of giving an alphanumeric value to an input, which is accomplished by the use of a hash function.
A Hash function is a function which transforms any input to a  fixed length output, no matter how long and big is the input (can be data, movie, a song, text, etc…)
La funzione di hash o funzione hash produce una sequenza di bit, detta digest, (o una stringa) strettamente correlata con i dati in ingresso. La parola viene dal termine inglese hash, dal verbo to hash, ovvero sminuzzare, 
pasticciare, che designa originariamente una polpettina fatta di avanzi di carne e verdure; per estensione, 
indica un composto eterogeneo cui viene data una forma incerta: To make a hash of something vuol dire, infatti, creare confusione, o fare una cosa piuttosto male.
Ex. of Bitcoin
Transactions in the BItcoin network work as an input for the hash function and therefore are passed through a hashing algorithm to generate a fixed length output. 
There are many types of Hashing algorithms available like MD5 and SHA 256 
Bitcoin uses a Secure Hash Algorithms 256 or referred to as SHA256

Whatever the size of the input

⇒ 

The hash generated will be fixed in his length (fixed length alphanumeric output)
Why do we need the Hash?
●	Crucial when dealing with big data info
●	Hash can be used to track the data instead of dealing with the big amount of input data
●	Thanks to the hash you manage a fixed length output and not the original input (which can be a big data sets difficult to manage)
Hash Function Properties, Characteristics
Property 1 - Even a small change in the input value, change Hash value significantly

Property 2 - Quick Computation or Computational Efficiency 
 A hashing function requires a certain computational power ⇒ Computers need to finish the mathematical tasks fast and in short time period.
⇒ When we state that the hash function has to be computationally efficient, we mean that the computer needs to compute fast in order to generate the hash from the input
Property 3 - Deterministic
The same input always generates the SAME hash If this wasn’t the case, the hash was useless.

Property 4 - Pre-image Resistance
Pre-image resistance is the property of hashing function through which the output doesn’t reveal anything about the input
⇒ the output generated by a Cryptographic Hash Function must not reveal any information about the input data.

As we can observe from the image, we generates an output Hash value from the input X but we cannot decrypt any information which reveals us about the input itself. We do not know what input the hash is referring to.
When an input X is passed through the Hash function, the hash generated is represented as H(X). Pre-image resistance simply means that even if you know H(X) it must be infeasible for you to determine the corresponding input X

Property 5 - Collision Resistance

The input for a hash function can be any type, size and length. So inputs are infinite.
The corresponding Hash values are fixed length output, so they are finite

In a scenario like this, two different inputs can have the same Hash → but the property of being collision resistance is that this case should be highly unlikely to happen.
Even if it happens, the hash function generating the output is encrypted and nobody can decrypt it to find the corresponding input.
Hash is a one way function
", order: 5, course: course)

#  3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end



Chapter.create(name: 'Chapter VI : Components of a Block - Part 4', level:2, 

content: "
6.	What are Smart Contracts?

Smart contracts are rules defined and executed by the lines of code on the blockchain.
●	Smart contracts work like real life contracts
●	They are completely digital stored in the blockchain 
●	Smart contracts are Software codes, which are run and executed by the Blockchain
●	They are based on conditions and rules which trigger automated actions. If conditions are met ⇒ automated action are triggered  ⇒ Smart contracts produce their effects
Smart contracts are, like real life contracts, agreements which are run by Blockchain, with specific rules/conditions which sets the type of contract. Everytime an condition is met, an automated action is triggered and the smart contract produces its effects.
Advantages of the Smart Contracts
●	No Manual intervention required
●	No middlemen required ⇒  less costs
●	Cost efficiency
●	Transparency and trust
●	Time efficiency
Smart Contracts are based on a mechanism which involves digital assets and two or more transacting parties. These parties deposit their digital assets into the Blockchain. 
These assets then get redistributed among the participants once predefined terms in the contract are met. Thus implementation of smart contracts bring in more transparency in the system, which mitigates the issue of fraud. 
Further it also leads to reduced costs for the participants as there is no third party involved in the transaction.

Smart contracts are like Vending Machines
These rules then get executed in the physical world by the vending machine.
Similarly, smart contracts are rules defined and executed by the lines of code on the blockchain.

Insurance companies can benefit of smart contract to reduce costs and increase efficiency

Ex. of Smart Contracts Insurance Industry and Smart Contracts
Current Inefficiencies of Insurance Industry:
●	Processing time ⇒ Takes weeks and even months to get claims settled
●	Processes are outdated and manual
●	Too much overhead costs for the insurer (customer)
●	Customers pay high premiums
Upsides:
●	Insurance companies can use smart contracts to automate insurance policies. In these smart contracts, conditions and rules are defined under which the claim will be approved or rejected. 
For example, in case of any catastrophic natural disaster, quantifiable parameters of the event such as speed of the wind or the magnitude of an earthquake can be recorded on to the blockchain. 
When the parameters meet the defined conditions in the smart contract, the claims processes are triggered immediately and the complete payout amount is released without any human intervention. 
Implementation of smart contracts not only reduces the overhead costs for the insurer but also brings in a sense of trust and transparency in the system.

Ex. of Smart Contracts in the Pharma Supply Chain
Keep track of the temperature of the vaccines or drugs during their transportation by linking smart Contracts to IoT devices which keep track of the temperature of the vaccines/drugs/products.
", 
summary:"Summary", order: 6, course: course)
3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end


Chapter.create(name: 'Chapter VII : What are the Criteria for Choosing Blockchain for a Business?', level:2, 

content: "

1.	Number of Intermediaries
2.	Database
3.	Trust

1.	Number of Intermediaries
a.	High costs and lots of intermediaries 
b.	Blockchain can cut down costs and remove intermediaries
For example in case of entertainment industry blockchain can really prove to be a game changer. In the entertainment industry, there is a long chain of intermediaries involved in between the creative artist and the final consumers of his creation. With the implementation of blockchain, the artist or the creator will have the absolute control over his content and he can be paid directly, instead of going through a chain of intermediaries for sharing his creative talent with the world

2.	If you need a Database which is tamper proof

For instance, in a business related to supply chain management, there are multiple stakeholders involved at various stages of the process and it also lacks transparency and real time updates about the consignment. For such a scenario, Blockchain can be a perfect solution. In a Blockchain based system, stakeholders involved in the supply chain will record the information about the consignment on the blockchain platform once they receive the consignment. This in turn will make it feasible to get real time updates and information about the consignment and the location of a consignment will be clearly visible to all the stakeholders involved throughout its journey.
3.	Trust
a.	Ina centralized system, fraud actions can be carried out easily
b.	Centralized DB leads to single point of failure and easy to hack ⇒ Blockchain with its distributed nature, avoids single point of failure


", 
summary:"Summary", order: 7, course: course)

3.times do |i|
  file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
  puts i
  Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
  file.close
end
#Course number 3 - Let's add on the website that the course will be available soon at the moment

# course = Course.create(name: 'Blockchain and its Properties')



#course 3

course1 = Course.create!(name: "Ethereum 101")


Chapter.create(name: 'Chapter I: What is Ethereum?', level:1, content: '

<body>
<h2>Is Ethereum better than Bitcoin?</h2>
<br>
<h3>
Ethereum is a global, decentralized platform for money and new kinds of applications. On Ethereum, you can write code that controls the money, and build applications accessible anywhere in the world.
<br></h3>

<br><br><p><div>
Beyond Bitcoin & first-generation decentralized applications. Although commonly associated with Bitcoin, blockchain technology has many other applications that go way beyond digital currencies. In fact, Bitcoin is only one of several hundred applications that use blockchain technology today.
Until relatively recently, building blockchain applications has required a complex background in coding, cryptography, mathematics as well as significant resources. But times have changed. Previously unimagined applications, from electronic voting & digitally recorded property assets to regulatory compliance & trading are now actively being developed and deployed faster than ever before. 
By providing developers with the tools to build decentralized applications, ethereum is making all of this possible.
<br><br></p></div>
<div>
<strong>Key Highlights:</strong>
<ul style="float:left;">
<br>
<li>November 2013: Vitalik Buterin publishes the ethereum whitepaper.</li>
<br>
<br>
<li>January 2014: The development of the Ethereum platform was publicly announced. The original Ethereum development team consisted of Vitalik Buterin, Mihai Alisie, Anthony Di Iorio, and Charles Hoskinson.</li>
<br>
<li>August 2014: Ethereum ends their ICO and raises $18.4 million.</li>
<br>
<li>May 2015: “Olympic” the ethereum testnet releases.</li>
<br>
<li>July 30, 2015: The first stage of Ethereum’s development, “Frontier” was released.</li>
<br>
<li>March 14, 2016: Homestead, the first “stable” ethereum release, went out on block 1,150,000.</li>
<br>
<li>June 2016: The DAO hack happens and the $50 million worth of Ether, which was 15% of the total Ether in circulation back at the time.</li>
<br>
<li>October 25, 2016: Ethereum Classic forks away from the original Ethereum protocol.</li>
<br>
<li>October 16, 2017: The Metropolis Byzantium hardfork update happens.</li>
<br>
<li>February 28, 2019: The Metropolis Constantinople hardfork update happens.</li>
<br>
</div>
</ul>
<br>
At its simplest, ethereum is an open software platform based on blockchain technology that enables developers to build and deploy decentralized applications. <strong>Is ethereum similar to Bitcoin? Well, sort of, but not really</strong>.
<br>
<br>
<p>Like Bitcoin, ethereum is a distributed public blockchain network. Although there are some significant technical differences between the two, the most important distinction to note is that Bitcoin and Ethereum differ substantially in purpose and capability. Bitcoin offers one particular application of blockchain technology, a peer to peer electronic cash system that enables online Bitcoin payments. While Bitcoin is used to track ownership of digital currency (bitcoins),  ethereum focuses on running the programming code of any decentralized application.
In the Ethereum, instead of mining for bitcoin, miners work to earn Ether, a type of crypto token that fuels the network. Beyond a tradeable cryptocurrency, Ether is also used by application developers to pay for transaction fees and services on the ethereum network. 
There is a second type of token that is used to pay miners fees for including transactions in their block, it is called gas, and every smart contract execution requires a certain amount of gas to be sent along with it to entice miners to put it in the blockchain.</p>
<br></body>
',

summary: 'If you want to know what is ethereum, how it works, and what it can be used for, without going deep into the technical abyss, this guide is perfect for you.', order: 1, course: course1)

Chapter.create(
name: 'Chapter II: What is a Ethereum smart contract?',
level:1,
content: '
<br>
Smart contract is just a phrase used to describe a computer code that can facilitate the exchange of money, content, property, shares, or anything of value. When running on the blockchain a smart contract becomes like a self-operating computer program that automatically executes when specific conditions are met. Because smart contracts run on the blockchain, they run exactly as programmed without any possibility of censorship, downtime, fraud or third-party interference.
While all blockchains have the ability to process code, most are severely limited. ethereum is different. Rather than giving a set of limited operations, ethereum allows developers to create whatever operations they want. This means developers can build thousands of different applications that go way beyond anything we have seen before.
<br>
<br> <strong>
Ethereum Virtual Machine
<br> </strong>
<br>
Before the creation of ethereum applications were designed to do a very limited set of operations. Bitcoin and other cryptocurrencies, for example, were developed exclusively to operate as peer-to-peer digital currencies.
Developers faced a problem. Either expand the set of functions offered by Bitcoin and other types of applications, which is very complicated and time-consuming, or develop a new blockchain application and an entirely new platform as well. Recognizing this predicament, Ethereum’s creator, Vitalik Buterin developed a new approach.
<br>
<br>
“I thought [those in the Bitcoin community] weren’t approaching the problem in the right way. I thought they were going after individual applications; they were trying to kind of explicitly support each [use case] in a sort of Swiss Army knife protocol.”  – Vitalik Buterin, inventor of ethereum
Ethereum’s core innovation, the Ethereum Virtual Machine (EVM) is a Turing complete software that runs on the ethereum network. It enables anyone to run any program, regardless of the programming language given enough time and memory. The ethereum Virtual Machine makes the process of creating blockchain applications much easier and efficient than ever before. Instead of having to build an entirely original blockchain for each new application, ethereum enables the development of potentially thousands of different applications all on one platform.
<br>

<br><strong>What can Ethereum be used for?</strong><br>
<br>
Ethereum enables developers to build and deploy decentralized applications. A decentralized application or Dapp serve some particular purpose to its users. Bitcoin, for example, is a Dapp that provides its users with a peer to peer electronic cash system that enables online Bitcoin payments. Because decentralized applications are made up of code that runs on a blockchain network, they are not controlled by any individual or central entity.
Any services that are centralized can be decentralized using ethereum. Think about all the intermediary services that exist across hundreds of different industries
From obvious services like loans provided by banks to intermediary services rarely thought about by most people like title registries, voting systems, regulatory compliance and much more.
Ethereum can also be used to build Decentralized Autonomous Organizations (DAO). A DAO is a fully autonomous, decentralized organization with no single leader. DAO’s are run by programming code, on a collection of smart contracts written on ethereum. The code is designed to replace the rules and structure of a traditional organization, eliminating the need for people and centralized control.
A DAO is owned by everyone who purchases tokens, but instead of each token equating to equity shares & ownership, tokens act as contributions that give people voting rights.
<br>
<br>
“A DAO consists of one or more contracts and could be funded by a group of like-minded individuals. A DAO operates completely transparently and completely independently of any human intervention, including its original creators. A DAO will stay on the network as long as it covers its survival costs and provides a useful service to its customer base”. Stephen Tual, Slock.it Founder, former CCO ethereum.
Ethereum is also being used as a platform to launch other cryptocurrencies. Because of the ERC20 token standard defined by the Ethereum Foundation, other developers can issue their own versions of this token and raise funds with an initial coin offering (ICO). 
In this fundraising strategy, the issuers of the token set an amount they want to raise, offer it in a crowd sale, and receive Ether in exchange. Billions of dollars have been raised by ICOs on the ethereum platform in the last two years, and one of the most valuable cryptocurrencies in the world, EOS, is an ERC20 token.
<br>
<br>
Ethereum has recently created a new standard called the ERC721 token for tracking unique digital assets. One of the biggest use cases currently for such tokens is digital collectibles, as the infrastructure allows for people to prove ownership of scarce digital goods.
Many games are currently being built using this technology, such as the overnight hit CryptoKitties, a game where you can collect and breed digital cats.
<br>
  ',
  order: 2, course: course1)

Chapter.create(
name: 'Chapter III : What are the benefits of a decentralized ethereum Platform?',
level:1,
content: '
Because decentralized applications run on the blockchain, they benefit from all of its properties.

Immutability – A third party cannot make any changes to data.

Corruption & tamper proof – Apps are based on a network formed around the principle of consensus, making censorship impossible.

Secure – With no central point of failure and secured using cryptography, applications are well protected against hacking attacks and fraudulent activities.

Zero downtime – Apps never go down and can never be switched off.

What’s the downside of decentralized Ethereum applications?

Despite bringing a number of benefits, decentralized applications aren’t faultless. Because smart contract code is written by humans, smart contracts are only as good as the people who write them.
Code bugs or oversights can lead to unintended adverse actions being taken. If a mistake in the code gets exploited, there is no efficient way in which an attack or exploitation can be stopped other than obtaining a network consensus and rewriting the underlying code.

This goes against the essence of the blockchain which is meant to be immutable. Also, any action taken by a central party raises serious questions about the decentralized nature of an application.

I want to develop an app. How do I access ethereum?

There are many ways you can plug into the ethereum network, one of the easiest ways is to use its native Mist browser. Mist provides a user-friendly interface & digital wallet for users to trade & store Ether as well as write, manage, deploy and use smart contracts. Like web browsers give access and help people navigate the internet, Mist provides a portal into the world of decentralized blockchain applications.
There is also the MetaMask browser extension, which turns Google Chrome into an ethereum browser. MetaMask allows anyone to easily run or develop decentralized applications from their browser. Although initially built as a Chrome plugin, MetaMask supports Firefox and the Brave Browser as well. 
While it’s still early days, Mist, MetaMask and a variety of other browsers look set to make blockchain-based applications accessible to more people than ever before. Even people without a technical background can now potentially build blockchain apps. This is a revolutionary leap for blockchain technology that could bring decentralized applications into the mainstream.

What apps are currently being developed on Ethereum?

The ethereum platform is being used to create applications across a broad range of services and industries. But developers are in unchartered territory, so it’s hard to know which apps will succeed and which ones will fail. Here are a few exciting projects.

Weifund provides an open platform for crowdfunding campaigns that leverages smart contracts. It enables contributions to be turned into contractually backed digital assets that can be used, traded or sold within the Ethereum ecosystem.

Uport provides users with a secure and convenient way to take complete control of their identity and personal information. Instead of relying on government institutions and surrendering their identities to third parties, users control who can access and use their data and personal information.
BlockApps is looking to provide the easiest way for enterprises to build, manage and deploy blockchain applications.From the proof of concept to full production systems and integration with legacy systems, Blockapps provides all the tools necessary to create private, semi-private and public industry-specific blockchain applications.

Provenance is using ethereum to make opaque supply chains more transparent. By tracing the origins and histories of products, the project aims to build an open & accessible framework of information so consumers can make informed decisions when they buy products.
Augur is an open-source prediction & forecasting market platform that allows anyone to forecast events and get rewarded for predicting them correctly. Predictions on future real-world events, like who will win the next US election, are carried out by trading virtual shares. If a person buys shares in a winning prediction, they receive monetary rewards.

“Ethereum is a spectacular public experiment that is showing the value of smart contracts on a public blockchain. It is the result of and the source of disruptive innovation of the likes that we haven’t seen since the early days of the Internet.” – Caleb Chen London Trust Media

The DAO hack that threatened everything

Remember how ethereum can be used to build Decentralized Autonomous Organizations? Well in 2016, something bad happened. A startup working on one particular DOA project, aptly named ‘The DAO’ got hacked.
The DAO was a project developed and programmed by a team behind another startup called Slock.it. Their aim was to build a humanless venture capital firm that would allow investors to make decisions through smart contracts. The DAO was funded through a token sale and ended up raising around $150 million dollars from thousands of different people.

Shortly after the funds were raised, The DAO was hacked by an unknown attacker who stole Ether worth around $50 million dollars at the time. While the attack was made possible by a technical flaw in The DAO software, not the ethereum platform itself, the developers and founders of ethereum were forced to deal with the mess.

An Ethereum fork in the road
After much debate, the Ethereum community voted and decided to retrieve the stolen funds by executing what’s known as a hard fork or a change in code.
The hard fork moved the stolen funds to a new smart contract designed to let the original owners withdraw their tokens. But this is where things get complicated. The implications of this decision are controversial and the topic of intense debate.
Here’s why. ethereum is based on blockchain technology where all transactions are meant to be irreversible and unchangeable.

By executing a hard fork and rewriting the rules by which the blockchain executes, ethereum set a dangerous precedent that goes against the very essence of blockchain. If the blockchain is changed every time a large enough amount of money is involved, or enough people get negatively impacted, the blockchain will lose its main value proposition – secure, anonymous, tamper proof & unchangeable.
While another less aggressive soft fork solution was put forth, the ethereum community and its founders were placed in a perilous position. If they didn’t retrieve the stolen investor money, confidence in ethereum could be lost. 
On the other hand, recovering investor money required actions that went against the core ideals of decentralization and set a dangerous precedent.

The aftermath – Ethereum splits
In the end, the majority of the ethereum community voted to perform a hard fork, and retrieve The DAO investor’s money. But not everyone agreed with this course of action. 
This resulted in a split where two parallel blockchains now exist. For those members who strongly disagree with any changes to the blockchain even when hacking occurs there is Ethereum classic.
For the majority who agreed to rewrite a small part of the blockchain and return the stolen money to their owners, there is ethereum.

Both ethereum blockchains have the same features and are identical in every way up to a certain block where the hard-fork was implemented. This means that everything that happened on Ethereum up until the hard-fork is still valid on the Ethereum Classic. From the block where the hard fork or change in code was executed onwards, the two ethereum blockchains act individually. 
Despite the fallout from The DAO hack, ethereum is moving forward and looking to a bright future. By providing a user-friendly platform that enables people to harness the power of blockchain technology, ethereum is speeding up the decentralization of the world economy. 
Decentralized applications have the potential to profoundly disrupt hundreds of industries including finance, real estate, academia, insurance, healthcare and the public sector amongst many others.
Most significant companies will run business processes on their private blockchains.

Private blockchains: Within two years, major companies will conduct several business processes on their own private, permissioned corporate blockchains. Employees, customers, vendors, and service providers at each company will be able to securely access that company’s private blockchain via strong cryptographically authenticated transactions.
Consortia blockchains: In two years, many companies will have started to build bottom-up consortia blockchains with a small number of counterparties in their ecosystem collaborating on a small number of use cases to share trusted source-of-truth infrastructure, supply or value chains.
Business use of public blockchains: Some companies will employ public ethereum with their use cases that employ the same stack of blockchain components that they have purchased or built for their private Ethereum-based implementations.

  ',
  order: 3, course: course1)


puts "Ethereum 101"


# Chapters_Tests

Course.all.each do |course|
course.chapters.each do |chapter|
  puts "#{chapter.name}"
  Test.create(question: " What is the meaning of life", answers: ["A", "42", "C"], correct_answer: "42", chapter: chapter)
  puts "#{Test.last.chapter.name}"
end
end

puts  "Seed Done"


#Course 4

course4= Course.create!(name: 'Cryptocurrency for Investors')


Chapter.create(
level:1,
name: 'What is Cryptocurrency Game Theory: A Basic introduction ',
content: 'What is Cryptocurrency Game Theory? One of the greatest innovations of the 21st century is, undoubtedly, the advent of cryptocurrency.
What is that makes the blockchain technology such a breakthrough? Let’s look at the real world and how fiat currency is maintained and stored. 
No matter who you are, your money is going to be stored in a centralized location, i.e. the bank. The problem with this model is that you are giving your money over to an entity and it is at the risk of getting compromised because of a variety of reasons. 
The blockchain solves this problem by being completely decentralized and corruption free internally. The way it achieves this is by the incorporation of cryptography and game theory.
  
What are market structures?

Before we understand the concept, we need to go through some basics first.The organization and fundamental characteristics of any market are called market structure. The market structures are differentiated based on many factors like a number of producers, control over prices and barriers to entry. 
Based on these factors, there are four different kinds of market structures:

Perfect Competition.
Monopoly.
Monopolistic Competition.
Oligopoly.

Perfect Competition

Perfect competition is a market place where it is easy for anyone to get into the market and individual sellers don’t have any power over the price of the product. 
Think of mangoes. It is easy for anyone to get into the market, all that anyone has to do is to grow mangoes. Plus, they can’t willingly change the price of the mangoes. 
If one person sells a mango for $10 then the buyer can simply buy it from someone who is selling mangoes for $5.

Monopoly
  
A monopoly is the polar opposite of a perfect competition. This is a market place which is dominated by one corporation and the barriers to entry are so high that nobody else can enter it. 
De beers diamonds are a great example of a monopolistic market.
  
Monopolistic Competition

This is a marketplace which has a lot of sellers and very low barriers. Their products are similar but not really identical. Think of the pizza delivery service. Now, dominoes and pizza hut have the same product with subtle differences. Obviously one can slightly price their product a little higher based on factors like customer preferences. However, if dominoes price their pizzas way too high, then people will simply go over to pizza hut. 
Consequently, if dominoes and pizza hut both start overcharging, since the barriers to entry is so low, another player can come in and take all the .

Oligopoly

Oligopolies are market places which are dominated by a few markets and the barriers to entry are high. One of the best examples of an oligopoly is the smartphone market. 
The market is dominated by few number of companies like Samsung, Apple, and Huawei. Much like monopolistic competitions, the products are similar but not identical. While this does give them some control over their prices, they don’t really have much of a leeway. If tomorrow, Apple decides to price their iPhones at $4000, apart from the Apple fanatics, most will simply opt for an Android phone. Obviously, they can always get together and decide as a group to mutually increase the prices, but this is called “collusion” and is illegal in many countries, including the United States.
  
So, when they can’t compete by changing prices, how can they get that edge over their competitors? They do so by “non-price competition”, which means competing without changing the price. How do they do that? They do so by changing the look and style of their products and giving a unique experience. However, the most recognizable form of non-price competition is advertising.
  
  ',
summary: 'If you want to start investing cryptocurrencies this is a great place to start, we dive deeper into tokens and their economies', order: 1, course: course4)

Chapter.create(
name: 'What is the Game theory?',
level:1,
content: '
Game theory is the study of strategic decision making. This is how many corporations make decisions while keeping in mind the actions that their competitors will take. Game theory was devised by John Van Neumann and Osker Morgenstern in 1944 and was considered a breakthrough in the study of oligopoly markets.
Since then the game theory has found a life of its own and has seen widespread implementations in various other technologies and fields.
  
A game theory model has at least 3 components:

Players: The decision makers. Eg. The managers in the firms.
Strategies: The decisions they want to take to further their companies.
Payoff: Outcome of the strategies.

In game theory, there are two types of games.

Zero sum game: It is a game in which the gain of one player comes at the expense of another player.
Non zero sum game: A game where the gain of one player doesn’t come at the expense of another player.

So, how does one apply game theory? Let’s go back to what we were discussing again, should or shouldn’t a company advertise a particular aspect of their product. Suppose there are two firms A and B.

The table that you see above is called a “payoff matrix”. The table basically reads like this:

If Firm A and B both decide to advertise then the payoff for both of them is 4 and three respectively.
If Firm A doesn’t advertise and B decides to advertise, then the payoff is 2 and 5.
If Firm A advertises and B doesn’t advertise then the payoff is 5 and 1.
If both Firms A and B don’t advertise then the payoff is 3 and 2.

So, what decision should both A and B take which will give them the best pay off? To solve this, we need to look at the scenario that serves both A and B.
Firstly, let’s look at Firm B.
    
Case 1: If Firm A advertises
Then Firm B has a payoff of 3 if they advertise and one they don’t advertise. So, obviously, their best payoff lies in advertising.

Case 2: If Firm A doesn’t advertise
Then Firm B has a payoff of 5 if they advertise and 2 if they don’t advertise. In this case their best payoff lies in advertising.

Conclusion: Regardless of what Firm A does, Firm B should advertise.
Now, let’s look at Firm A.

Case 1: If Firm B advertises
The Firm A has a payoff of 4 if they advertise and 2 if they don’t advertise. So, once again, their best payoff lies in advertising.

Case 2: If Firm B doesn’t advertise
In this case, Firm A has a payoff of 5 if they advertise and a payoff of 3 if they don’t advertise. Once again, their best payoff lies in advertising.

Conclusion: Regardless of what Firm B does, Firm A’s best strategy lies in advertising.
So, in this example, for both Firm A and Firm B, their most stable state will be if they both advertise, which is:

For both Firm A and Firm B, this is their dominant strategy. A dominant strategy is the best course of action for a player regardless of what the opponent does. In this example, (4,3) is also the Nash Equilibrium.

What is Nash Equilibrium?

The Nash equilibrium is a solution to a game where each player chooses their optimal strategy given the strategy was chosen by the other and they have nothing to gain by shifting their strategy. This was formulated by John F Nash who was portrayed by Russell Crowe in the movie, “A Beautiful Mind”. This has humongous implications in a distributed computer system like the blockchain. 
In fact, the blockchain is “cheat-free” because the entire protocol is in a Nash Equilibrium. We will discuss this later, but for now, let’s see the Nash Equilibrium in action in one of the most famous game theory concepts.
  
The Prisoner’s Dilemma
  
Ahh.. the good old prisoner’s dilemma. Chances are that if you have any idea about game theory then you must have come across this problem. Anyway, let’s get right to it. Suppose Rob and Ben were caught stealing a liquor shop and during the investigation, it was discovered that both of them have committed a far more serious crime in the past, say a bank robbery. During the investigation, the cops interrogate both of them and present them with a proposition.

Proposition 1: If you both don’t rat the other guy out then you will both get four years in jail.
Proposition 2: If one of you rats the other one out then the person who confessed will get 0 years while the other gets seven years.
Proposition 3: If both of you confess then you will both get two years each.

Obviously, Rob and Ben are hardened criminals and they won’t rat anyone out because there is “honor among thieves.” As romantic as that notion may sound, behavioral psychology and game theory tells us otherwise. Let’s look deep into it.

If they both confess, then the payoff matrix says that the outcome is (4,4). Meaning they both get 4 years each. However, that is a very unstable state because they both know that they have a better deal on the table. If they do rat the other person out, then they will have 0 years to serve. Because of this, this case is a very unstable scenario
This is why, contrary to what pop culture tells us, in a situation like this, Nash Equilibrium happens when both of them rats the other one out. This is how Rob and Ben reach their optimal solution keeping the other’s strategy in mind.
But this brings us to a problem.
What if there is a scenario where the optimal solution for both the players lies in the scenario which has bad implication towards the society? Think of this scenario where Rob and Ben are planning a bank heist.

As you can see, in this hypothetical scenario, the best and most optimal strategy lies in both Rob and Ben stealing. While this might be good for both of them, it is not a good scenario for the society.

This is where the idea of “punishment” comes in.

The world is not necessarily a kind and fair place. Men are generally very corruptible and if not kept under check. In the real world, people will generally have a lot of opportunities to get corrupted without any consideration for the society in general. So the way we keep things like this in check is by implementing a punishment strategy.
So suppose in the example shown above we have a punishment strategy that goes like this: For every -0.5 of utility taken from the public a punishment factor of -7 will be given..
In other words, every act that is considered “bad” for the society will have their payoff deduced by 7 and that will cost -0.5 in utilities for the society. Now, you may be thinking why will society do anything like that? There is a loss of utility for the society which can be money, time anything and on the other hand, the people who are committing a crime are getting a terrible punishment as well.
  
By adding the punishment factor, the Nash Equilibrium changes from something that could have been bad for the society to something that is good for the society. So it changes from, Ben and Rob doing the bank heist to Ben and Rob doing the bank heist but also facing the consequences of a punishment.
How does that apply in a civilized society? Think of a police force that is funded by tax taken from the people. In this case, we have a specialized force which will dole out the punishment and the way the society takes part in it is by paying their taxes which fund the force. If you do not pay the taxes, then you are subject to punishment as well.
  
Another interesting example of “punishing the non-punishable” is social ostracization. Think of a society where a person, says Max, has committed a crime. Instantly he becomes an outcast in the society. This is a scenario where everyone in that society is participating in the punishment. Now suppose, someone does mingle with Max, that person also, by association, will become “bad” and he/she, in turn, will be ostracized by the society as well.
It wouldn’t be a stretch to say that this very concept is the reason why we aren’t all dead right now.

The concept of Nash Equilibrium and Punishment has heavy implications in blockchain and keeping the miners honest. We will explore that in a bit. But before doing so, we must go through some more basic game theory models.
  
The Schelling (Focal) Point

The great economist Thomas Schelling conducted an experiment with a group of students asking them a simple question: “Tomorrow you have to meet a stranger in NYC. Where and when do you meet them?” He found out that the most common answer was, “Noon at the Grand Central Terminus.” This happened because the Grand Central Terminus, for New Yorkers is a natural focal point, the focal point is also known as a “Schelling point”.
  
So, to define a Schelling point: It is a solution that people will tend to use in the absence of communication because it feels special, relevant or natural to them.

Let’s demonstrate this concept with a game. Suppose there are two prisoners kept in two different rooms and they are given a random series of numbers. Then they are told to guess the number that they another prisoner will guess, without any communication between the two. If they guess the wrong number, then they will be killed (just to up the ante)  .

  
The numbers that they are given are:
Which number do you think they will choose?
7816239, 676716313, 100000000 and 871823719.
100000000.

Why? Because it is different and special when compared with the rest of the numbers and that is why it is Schelling point. Throughout our history, human beings have unknowingly sub consciously converged in various places such as bars, churches, community centers, etc. because in a society those places are common Schelling points.

A very famous example of the Schelling point in action is a game that we hope you have never played in your life called “The Chicken Game.” This is how it works, two people ride towards each other on a bike. If they collide head on, they die. However, the first person who swerves away from the incoming rider is a “chicken”.

So, in this game, there are two scenarios which can end in a crash:

Case 1: Both riders head towards one another.
Case 2: One rider swerves left and the other swerves right.

Thomas Schelling gave the solution to this using the concept of focal points. He said, that the best solution to this game is to not look at the other rider in the eye (i.e. cut off communication with the other rider) but focus on one’s own instincts. Since, in the United States, people drive on the right side of the road, if we let our instincts take over, we will automatically steer the bike towards the right side, because that’s where our Schelling point lies.

Grim Trigger Equilibrium
In order to understand how a grim trigger equilibrium works we need to think of a scenario. Let’s imagine a social situation where monarchy still exists and it is believed that kings get to rule over others because of a divine right from the Gods. However, in a society like this, if the king is killed then automatically the law of divine right disappears because it will be apparent to everyone that the king is not a divine being. What this will do is that it will open all the floodgates.
Now that it is apparent to everyone that the king is killable, it will start an endless cycle of bloody revolutions where nothing can stop from all the subsequent future kings from getting murdered. The only way to stop this vicious cycle is by NOT killing the king in the first place and to maintain the notion of “divine right”. This is called a Grim Trigger Equilibrium.  Think of it as a state wherein if you deviate even a little bit you are going to cause an endless cycle of recursive punishment

The concept of Bounded Rationality
Imagine this scenario, Sarah goes to the grocer’s shop every single day and buys an apple. She does this every single day as a ritual. However, every day she faces a situation. Every day, whenever she is in the shop, the shopkeeper leaves for 5 mins and there are no security cameras in place. She can easily shoplift an apple and nobody will get to know about it. Yet she never does that.
What Sarah does here is called “Bounded Rationality”. Bounded rationality basically means that when given a choice, people will always follow a path that is simple and something they are used to. This path may not be what is best suited for them and it may not give them the highest pay offs, yet they will always follow the simplest path. The reason why Sarah chose the virtuous path of following her simple routine everyday instead of shoplifting and getting away with no repercussions is that the second scenario is a little more complex than her simple everyday routine.
Now that we have gone through some game theory models, let’s see its implication in cryptocurrency and how it helps keep the system floating.
  ', order: 2, course: course4)

Chapter.create(
name: 'Blockchain and Cryptocurrency Game Theory',
level:1,
content: 'A block is a series of blocks which contains individual transactions in it. Each block also contains the hash of the previous block and this, in turn, links each subsequent block to the previous block making a chain. Hence the term, “blockchain.” This is a rough visual representation of a blockchain.
  
Some terms:

Genesis block: The first block of the blockchain is called a “genesis” block.

Proof of work: The amount of computational work required to create the block.

Parent block: The block that immediately precedes a block is the parent block of that block. So in the diagram above, Block 50 is the parent block of Block 51.

Every block in the blockchain has a scoring function.

Score(genesis) = 0.

Score(Block) = Score (parent block) + Proof of work

The current state of the chain is the block with the highest score.

In a system based on blockchain bitcoin there are two players:

Users.
Miners.
Users, in bitcoin, have only two functions available to them:

Send coins.
Receive coins.
In order to do that they need two keys, the public, and the private key. What miners do is that they authenticate the transactions AND they do the process of mining. Mining is how new blocks are discovered and added to the blockchain.

Block Mining
Through a series of computations, miners find a block and add it to the blockchain.In Ethereum, adding the block gives the miner(s) a reward of 5 ether and In bitcoin, the mining reward is 25 BTC (both as of writing). Miners have a lot of power in the blockchain system and if they do choose to cheat for their own personal gain, they can cause havoc in the system.  
To mitigate that, the blockchain uses game theory mechanics to keep the system bulletproof. In order to understand how game theory keeps the miners honest, let’s take a look at another peer-to-peer system which has allowed its users to, time and again, get away with cheating.  
Torrenting is one most popular peer to peer systems in the world. While using torrents, users have two roles: downloading and seeding. After downloading a file, they are supposed to share it the network via a method called seeding. However, they get no compensation for seeding the said file and hence more often than not they refuse to do so. Most torrent users are “cheats” because they do not seed their files. They can get away with cheating because the system doesn’t have a “punishment model” the way blockchain does.
  
How can miners cheat? – Cryptocurrency Game Theory

They can include an invalid transaction and give themselves extra coins.

Add blocks randomly without worrying about Proof of work.

Mine on top of invalid blocks to get more BTC.

Mine on top of a sub-optimally scoring block.

The Nash Equilibrium in mining and the punishment system.

If a miner creates an invalid block then others won’t mine on top of it because of a rule that has been defined in blockchain mechanics. Any block that is mined on top of an invalid block becomes an invalid block. Using this rule, miners will simply ignore the invalid block and keep on mining on top of the main chain aka the blue chain in the diagram.

This similar logic stands for sub-optimally scoring block. Look at the diagram again. No miner will want to mine on Red Block 52 because the Blue Block 53 will have a higher score than the red block.

Both of these scenarios get mitigated because miners., as a group will choose the most stable state aka the state with a Nash Equilibrium. Obviously, you can make all the miners mine on the red block and make it the new blockchain, however, the number of miners is so vast that an event like that simply cannot be coordinated (we will talk about this in a bit). As the co-ordination game states, if a majority of the people in the group are not changing their state, the minority will not have any incentive to stay in the new state. Seeing this, why will a miner spend all their computation power and risk ostracization in a futile cause?

Why will users use the main chain instead of the other chain?

So, now that we have seen the reason WHY miners will prefer the blue chain…What about the users? In the blockchain game, there are two players, miners, and users. Why will users prefer the blue chain over the red chain? Once again, game theory mechanics come into play.

The first thing that you need to keep in mind is that cryptocurrency has value is because the people give it value. So, why will a normal user assign a value to coins coming out of the blue chain and not to the coins coming out of the red chain? The reason is simple. The main chain is a Schelling point from the users perspective. They give it value because the main chain seems natural and special to them.

Bounded Rationality: Another reason why users will value the main chain more is that they are simply used to it. Like bounded rationality states, people will simply opt for the simplest solution every time. Moving through a newer chain needlessly complicates things.
  
What is the Proof Of Work Takeover Problem?
  
Vitalik Buterin gave a great example of the Takeover problem and we are going to expand on it. Suppose, someone makes a hypothetical smart contract for an activity. The terms of the contract go like this:

Any miner can join the activity by sending a very large deposit into the contract.

The miners must send shares of the partially completed blocks that they have mined into the contract and the contract verifies it and also verifies that you are a miner and that you have sufficient hash power.

Before 60% of the miners in the system join you can leave anytime you want.

After 60% of the miners join, you will be bound to the contract until the 20 blocks have been added to the hard fork chain aka the red chain.

Yes, it is indeed very diabolical and you can see the problem that this attack can have. Not only will the new chain grow bigger and longer, since 60% of the entire miners are bound contractually to this new chain this will quickly make the original older chain aka the blue chain irrelevant. This will make double spends all over the place and the value of the currency will fall fast.

Now, you might be asking why miners will join in a takeover?
  
Well, let’s see their incentive for joining:
  
The possible reward at the end.
No risk of joining on their part.
What is their incentive to follow through with the contract?
  
The huge amount they have deposited in the beginning.
Once again, the possibility of a great reward.
Theoretically, a takeover like this can end any currency, but this is not that likely to happen because of…You guessed it…. game theory mechanics.

Grim Trigger argument to the rescue!

Think of our king argument when we first talked about grim triggers. If a king is killed and usurped, what will stop the new king from getting killed and from this becoming an endless bloody cycle? To stop this from happening, the best course of action is to not kill the original king in the first place.

Similarly, let’s use this logic for blockchains. If a blockchain is taken over and destroyed and the miners are diverted into a new chain, what is stopping that new chain from being taken over by the majority anytime soon? To stop these endless hardforks (aka the red chains in the diagram) from happening, it is important that we don’t do the takeover in the first place.

However, there are certain places where the Grim Trigger argument does fail, and obviously, there are places where it works pretty spectacularly:

The argument fails when the miners are not bound to singular currency. If the miners are working on several currencies, then they can simply group to take over a low-value currency.

The argument holds up if they are bound and loyal to a particular currency. After all, it is in their direct interest to uphold and maintain the value and legitimacy of the currency.

If the currency requires specialized ASICs, then the grim trigger argument holds up. If a currency can only be mined by specialized software, then miners will make sure that nothing happens to that particular currency and that it doesn’t lose value. Specialized ASICs after all, can only work for a particular currency. Otherwise, it is useless. Plus, they are expensive.

The argument doesn’t hold up if the currency can be mined using CPUs. CPUs are not expensive after all, and it can be used to mine other currencies.

However, if the miners who own the CPUs have a stake in the currency, the argument holds up because they don’t want to lose the stake that they have invested in the currency. This is a sort of proof-of-stake.
',
order: 3, 
course: course4)

#course 5

course5 = Course.create!(name: 'How To Invest in Cryptocurrencies: The Ultimate Beginners Guide')

Chapter.create(
name: 'How to invest in Cryptocurrency',
level:1,
content: '
You probably can’t avoid seeing a news article about the latest Bitcoin price or stumbling upon investment advice on social media.
And the growth is not even close to being over. The global cryptocurrency market was valued at 332 million US dollars in 2017, has risen to 3.67 billion in 2020, and is projected to reach 394.60 billion by 2028 (Grandviewresearch.com).
So what does this all mean? Should you get involved? How do you get started investing in cryptocurrencies?
  
If you’re looking to get a better understanding of what cryptocurrencies are, how they work, and how to invest in cryptocurrency, then this guide to trading cryptocurrency is for you. Read on to find out how it works, what your options are, and the best and safest way to invest in digital currency.
While the decision to invest in cryptocurrency is ultimately up to you, it is our hope that you’ll walk away from this guide feeling more educated, empowered, and confident that you have everything you need to start investing.
  
What is Cryptocurrency?
Cryptocurrency is a broad term for digital assets with transactions that are verified and records maintained by a decentralized blockchain system using cryptography, rather than by a centralized authority like a Visa credit card or a bank.
Bitcoin is the most popular cryptocurrency today as a currency that functions as a store of value. One study from 2019 estimates ~100 million people currently hold Bitcoin.
Unlike traditional money, or ‘fiat’, which is printed and backed by a centralized government, cryptocurrency has no physical form, and exists digitally on a blockchain as tokens.
Crypto is not yet a widely accepted form of money, but it gaining recognition as a real-world unit of account by some early adopters.
Mark Cuban, owner of NBA franchise The Dallas Mavericks announced that the Mavs now accept the cryptocurrency Dogecoin for online tickets and merchandise purchases.
And some centralized payment providers like PayPal now accept Bitcoin and other cryptocurrencies as forms of payment.

Just like stocks and bonds, cryptocurrencies can increase and decrease in value, depending on their demand in the market. This is why many people are interested in speculating on and investing in cryptocurrencies.

What Makes Cryptocurrencies Different From Fiat Money?
Fiat money — money like the American (USD) or Canadian (CAD) dollar — is issued by the government, meaning there’s a central authority that controls its value, interest rates, and supply (how much is in circulation).
Many view this degree of government involvement in the mechanics of the free market as manipulation and as an archaic (and futile) attempt to manage a vast and complex economic system. 
wealth building very difficult for the average person, at worst.

Cryptocurrencies, on the other hand, are decentralized — all transactions are done peer-to-peer or through smart contracts and there’s no authority overseeing them. Many people consider this a massive advantage over traditional money, because it gives them full control of their assets.

How Do Cryptocurrencies Work?
When a new cryptocurrency transaction occurs, it gets added to a digital ledger of all other transactions on a decentralized network of computers called the blockchain.
Computers or ‘nodes’ of blockchain can have varying degrees of centralization and decentralization, and can be spread all across the world.
Before a new transaction can be added to the blockchain, these nodes check the new data to be added or ‘block’, against each other’s records to verify it.

This makes the blockchain incredibly secure and virtually impossible to hack.
If someone wanted to fake a transaction, they’d essentially need to hack 51% of the nodes in a network, which would be incredibly time consuming and expensive to ever be worth it.

Investing in Cryptocurrency
Before we dive into how to invest in cryptocurrency, it’s important to understand that there are good reasons to get involved, and there are poor ones.
Remember that for every person who made an overnight fortune trading Bitcoin, there is someone who lost their entire life’s savings, so if you’re not willing or able to tolerate high-risk and extremely volatile investments with potential for high rewards and losses, then cryptocurrency investing may not be for you.
However, if you’re genuinely curious about the possibility of cryptocurrencies forever changing the way we deal with finances, and are willing to learn and able to manage the risk, then read on.

Good Reasons to Invest in Cryptocurrency

1. You believe that cryptocurrencies are the way of the future and will likely replace the traditional fiat money — if this happens, you want to be educated, prepared, and experienced.

2. You support the social vision behind cryptocurrencies — that currency should be decentralized and under full control of the people who use it.

3. You understand and appreciate how blockchain technology works — you value the peer-to-peer aspect of transactions, their security, and confidentiality.

Is Cryptocurrency a Good Investment?
The cryptocurrency markets are far more volatile than the stock markets. With less liquidity, and more speculation than traditional financial markets, the value of any given cryptocurrency can rise and fall by 30% or more in a day.
Not only that, crypto markets are open for trades 24/7, 365 days a year. There are no evenings or weekends off like the NASDAQ or LSE. If you’ve been hearing about cryptocurrencies a lot these days, you may feel like it’s a good opportunity to make a quick profit.
But if you’re just jumping on the bandwagon and take no steps to educate yourself about how the technology and the market work, you risk losing money.

Let’s take a look at Bitcoin, for example — the first and by far most dominant cryptoasset.

Early investors in Bitcoin have made millions of dollars in profits. In the span of just one year, Bitcoin’s price went from $7,000 USD in April 2020 to over $60,000 USD in April 2021!
Now imagine what kinds of profits went into the pockets of people who bought Bitcoin back in 2013, when it was a mere $100 USD.
Though that sounds very exciting, it certainly is not the whole picture. Take a look at the entire graph, showing Bitcoin’s fluctuations in price between October 2013 and the end of May 2021. It’s not a straight upward climb.

Bitcoin’s price went from $18,000 in December 2017 to $3,000 in December 2018. And here’s an even quicker drop: if you were one of the people who got excited by all the growth Bitcoin experienced in early 2021, you would’ve seen it drop from $64,000 in April to $35,000 just one month later in May 2021.
The point here is this: cryptocurrency prices can be extremely volatile and impossible to predict in the short term. All it takes is an announcement from a large company or a tweet from Elon Musk, and the currency’s value can skyrocket or plummet in a matter of hours.
That’s why you should only ever risk as much money as you can afford. Like Wence Casares, CEO of Xapo, sums it up in an AMA on bitcoin.com:

“I always tell them [my family] that the second most stupid thing they could do right now is to own a number of bitcoins they cannot afford to lose and the most stupid thing they could do would be to not own any.”

Before investing in cryptocurrencies, it’s absolutely imperative that you educate yourself so you can be equipped to make the right decision at the right time. Or as they say: DYOR – do your own research!
',
summary: 'Cryptocurrencies are seeing a massive surge in popularity. While they used to attract a very niche audience just a few years ago, today, everyone and their grandmother wants to learn how to invest.' , order: 1, course: course5)


Chapter.create(
name: 'What Cryptocurrency Should You Invest In?',
level:1,
content: '
Always educate yourself, understand the risks, the all possible outcomes, and don’t make any investments if you are not 100% comfortable with your decision.
That said, Bitcoin remains the undisputed king of cryptocurrencies — it’s been around the longest and has the largest market capitalization of over 674 billion USD (as of May 2021).
Market capitalization is the total value of all tokens available, or the price of each token multiplied by the number of tokens in circulation.

Market capitalization is the total value of all tokens available, or the price of each token multiplied by the number of tokens in circulation. They all differ in price, availability, demand, transaction speed and fees, and the technology that supports them.
The website CoinMarketCap lists over 5,000 options in order of decreasing market capitalization. Here are the top 10 and their performance as of May 2021.

It doesn’t matter what the price of a given cryptocurrency is, you can always buy a fraction of a token. For example, if 1 Bitcoin costs $35,000 USD, you can always buy 0.0001 Bitcoin for the equivalent of $350 USD.
When researching tokens to invest in, you can take a look at CoinMarketCap to get a snapshot of the top performers, but your research should not stop there. In fact, that’s where the real work begins.

Read on to find out how to invest in cryptocurrency properly, and evaluate whether a cryptocurrency is worth investing in and how to avoid getting yourself into risky or fraudulent situations.

1. Read the Project’s Whitepaper
When you’ve found a cryptocurrency you like, the first thing you need to do is read the whitepaper.
“A white paper is an authoritative report or guide that informs readers concisely about a complex issue and presents the issuing body’s philosophy on the matter. It is meant to help readers understand an issue, solve a problem, or make a decision.” (Wikipedia)

Reading the whitepaper will give you two tremendous benefits:

a. You, as a potential investor, will learn everything you need to know about the cryptocurrency and the value that it’s bringing into the ecosystem

b. A poorly written whitepaper is often a sign that the project is not worth investing in. If the team behind the cryptocurrency can’t adequately explain the true utility of their token, then it’s probably not worth supporting.

2. Think About the Value that the Project is Bringing In
Check to see whether the project is bringing in any practical utility into the ecosystem. The perfect example of this is Ethereum. 
There is a reason why it took off so fast — for the first time, developers around the world had a platform that they could use to build their own dapps – or decentralized applications – on a blockchain.
Along with that, keep in mind the issues that the crypto world is desperately looking to solve — privacy, scalability, and interoperability.
A good way to go about your investment is to find the projects that are specifically working on solving these problems.

As of 2021, the players trying to solve these same problems and roll them all into their platform, or “Layer 1” network include:

Matic
Binance Smart Chain
Fantom
Polkadot
Solana

3. Evaluate the Project’s Tokenomics

How do you make sure that you’d be getting good quality tokens?

William Mougayar outlines a great framework for evaluating a token based on three principles:

1. Role

2. Purpose

3. Features

Each token role has its own purpose, as outlined below:

Right: the token holder gets a certain amount of rights within the ecosystem, such as the right to vote.

Value exchange: the token helps buyers and sellers trade value within the ecosystem.

Toll: the token acts as a toll gateway in order for the holder to use certain functionalities of the system.

Function: the token enables the holder to enrich the user experience inside the confines of the environment.

Currency: the token stores value that can be used to conduct transactions both inside and outside the ecosystem.

Earnings: the token provides an equitable distribution of profits or other related financial benefits among investors.

4. Look Out For Obvious Signs of Scam

Good coins have a transparent technical vision, an active development team, and a lively, enthusiastic community. Bad coins are not transparent, promote fuzzy technical advantages without explaining how to reach them, and have a community that is mostly focused on getting rich quickly. 
Perhaps the worst kind of cryptocurrencies are MLM coins like the now infamous scam Bitconnect. We will talk more about Bitconnect in a bit. For now, here are some of the more obvious signs of scam.

The Team
It really goes without saying that the success of a project is directly related to the credibility of the team. Let’s put it like this: if you are investing your money into a company, wouldn’t you want to know that the company is in good hands and that your money is going to be appreciated considerably?
One of the most successful new projects of the current 2020-2021 market cycle is Uniswap. Although created in 2018 by ex-Siemens engineer Hayden Adams, Uniswap saw incredible success later on in 2020-2021.
In March of 2021, it was generating fees of approximately $2-3 million dollars daily for liquidity providers who create a market for buying and selling on the platform.

Of course, most of the time, bad investment advice won’t be this easy to detect. But there are steps you can take to thoroughly research the project’s team and ensure their credibility.
First, search for the names of the team members on Google. More often than not, they’ll have a LinkedIn profile. Learn as much as you can about each team member and ask yourself the following questions:

Have they been involved in any successful ICO venture before?

Have they been involved in a reputable company?

Have they been recommended or endorsed by credible people?

Next, search for the team members’ photos on Google. This will help you identify whether or not you’re being “catfished”. You may discover that the photo depicts another person entirely, a celebrity, or a stock photography model.
You may also come across the same photo on a number of similar projects — another clear sign of a mass scam.

1. Pyramid Scheme Resemblance
According to Wikipedia, “A pyramid scheme is a business model that recruits members via a promise of payments or services for enrolling others into the scheme, rather than supplying investments or sale of products or services. As recruiting multiplies, it becomes quickly impossible, and most members are unable to profit; as such, pyramid schemes are unsustainable and often illegal.”
An ICO that promises “guaranteed returns” on their investment is a scam. Any crypto investor worth their salt will tell you that there are no guarantees in the crypto currency world.

One of the most egregious examples of this is Bitconnect. Let’s take a look at their website and promises. If you see anything like this on a website, don’t bother taking any of their bounties. Simple as that.

Inactive Code Repository
An active GitHub repository is a good indicator that serious development has been going on in the project.
Here’s a good example of an active GitHub repository — with 1,014 commits, their developers are definitely giving their all to the project.

',
order: 2, course: course5)

Chapter.create(
name: 'How to Buy Cryptocurrency On A (CeFi) Centralized Exchange',
level:1,
content: '
  1. Find a centralized exchange that accepts your local fiat currency (ie. US: Coinbase, Kraken, CA: Newton, Bitbuy)

  2. Create an account on that exchange and upload your proof of identity as requested.

  3. Wait a few days for your identity is verified according to KYC and AML regulations.

  4. Send fiat from your bank via direct deposit, e-transfer, SWIFT money transfer or credit card (options vary by exchange) to the exchange

  5. Buy crypto (availability varies by exchange)

  The exchange serves as one of the most critical functions in the crypto ecosystem. It basically acts as a portal between the fiat world and the crypto world — the “on-ramp” if you will.

  Centralized exchanges help you buy Cryptocurrencies in exchange for fiat money (US or Canadian dollars, British pounds, etc). Coinbase is a perfect example of this kind of exchange. Coinbase lets you exchange your fiat for crypto with its easy to use app.
  If you’re wondering why you have to go through the lengthy and arduous process of signups and verifications to purchase crypto, the answer lies in the various Know Your Customer (KYC) and Anti-Money Laundering (AML) laws that centralized exchanges are legally obligated to comply.
  Some exchanges avoid this process by simply not allowing you to deposit your fiat dollars into the exchange, and limit transactions to be between crypto-to-crypto, as opposed to the fiat-to-crypto that requires AML laws to be observed by the exchange.
',
order: 3, course: course5)

Chapter.create(
  name: 'How to Buy Cryptocurrency On A (DeFi) Decentralized Exchange',
  level:1,
  content: '
  1. First create an account on a centralized exchange (see above).

  2. Create a hot wallet (ie. Metamask, TrustWallet) by adding as an extension to your browser (Chrome, Firefox).

  3. Be sure to physically write down your secret passphrase on paper and keep it safe!

  4. Transfer crypto from the wallet on your centralized exchange to your hot wallet.

  5. Evaluate and choose a blockchain ecosystem you want to use (ie. Ethereum, Polygon, Binance Smart Chain).

  6. Find a decentralized exchange (DEX) that has the liquidity and assets you want on the ecosystem you want

  7. Buy crypto!

  The question, what type of exchange to use depends on a number of factors. What is your risk tolerance? What are your investment goals and timelines? What is your investment or trading strategy? How important is security, privacy, or decentralization to you?
  There are a lot of variables and trade-offs to consider, and no one-size fits all answer. One thing is for certain: crypto investing can be risky – so do your own research, and do not make investments without strong conviction.

  If you want to learn more about how to safely invest in CeFi and DeFi exchanges, our Crypto Investment School course has a comprehensive curriculum taught by crypto investors who’ve got real-world experience.
  

  ',
  order: 4, course: course5)


