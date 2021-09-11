# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
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

course = Course.create(name: 'Blockchain fundamentals')

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

# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end

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
# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end

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
# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end
 
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
# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end

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
# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end
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
# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end

#parent seed file

#course number 2

course = Course.create(name: 'Blockchain and its Properties')

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
summary: "Blockchain is a tamper-proof distributed digital ledger (register).." , order: 1, course: course)

# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end

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
summary:'
1.	Decentralization
2.	Distributed Ledger
3.	Immutability
4.	Consensus' , order: 2, course: course)

# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end


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
# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end


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

# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end


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
", 
 summary:"Summary", order: 5, course: course)

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
# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end


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

# 3.times do |i|
#   file = URI.open('https://source.unsplash.com/1600x900/?blockchain')
#   puts i
#   Chapter.last.photos.attach(io: file, filename: "block#{i}.jpg", content_type: 'image/jpg')
#   file.close
# end
#Course number 3 - Let's add on the website that the course will be available soon at the moment

# course = Course.create(name: 'Blockchain and its Properties')



#Dummy courses
i = 1
10.times do 

course = Course.create(name: "Dummy course # #{i}")

Chapter.create(name: 'Why Blockchain?', level:1, content: 'In 2010, a programmer paid 10,000 Bitcoins for 2 pizzas, roughly worth $30. In 2018, that same number of bitcoins is estimated at $83 million in value!

The exchange of Bitcoin is possible due to an underlying technology that secures and simplifies transactions removing the need for a bank or a central authority. Anyone with an internet connection has the freedom to own and exchange this digital currency. The powerful architecture that drove this revolution was blockchain. Businesses started to realize the potential of blockchain and are rapidly mobilizing to understand and implement it. But, what exactly is blockchain and what makes it so transformative?',
summary: 'In 2010, a programmer paid 10,000 Bitcoins for 2 pizzas, roughly worth $30', order: 1, course: course)


Chapter.create(name: 'What is Blockchain?', level:1, content:'The blockchain is similar to a permanent book of records that keeps a log of all transactions that have taken place in chronological order.
Let’s envision a bank transaction in which there are three parties: the sender, the bank, and the recipient. In order to ensure that there are no fraudulent transactions, the bank acts as the central authority between the parties.
The blockchain also logs transactions between senders and receivers, except there is no bank or central authority. Instead, the blockchain relies on a public network of computers to verify the transaction. 
The blockchain is just an accurate, and permanent record of all the transactions that have happened amongst the members in that blockchain’s network. In this analogy, each block in the blockchain represents a transaction, 
and each transaction is connected to the prior transaction to form the entire connected blockchain.', order: 2, course: course)

Chapter.create(name: 'The Blockchain Network', level:1, content: "So how do Blockchain-based applications like Bitcoin and Ethereum validate transactions without a central authority?
  In the blockchain, there are many participants in the network that are constantly checking to ensure that each transaction is valid. Each participant is a computer that owns a copy of the blockchain. 
  These participants cross-reference their copy of the blockchain each time a new block is being introduced. 
  Because this validation depends on multiple participants, the digital record is “decentralized”.
  In order for a new block to be added, 51% of all of the participants in the blockchain network must verify that the new block is not fraudulent. Once a block has been verified as a valid transaction, it is added to each participant’s copy of the blockchain.
  By having the majority of participants validate a new transaction, the blockchain removes the need for a central authority and automates the completion of transactions, reducing transaction fees while ensuring a high level of security.", order: 3, course: course)


Chapter.create(name: 'What are Blocks in the Blockchain?', level:1, content:'Just like bricks are the building blocks of a house, blocks themselves are the building blocks of a blockchain.
  A block contains transaction data and other important details related to the creation of that block, such as the time when it was created and other unique information.
  In order to create a block, we must have a record that we wish to store.
  In this lesson, we will be discussing transaction data. This is just one example, but blocks can hold different types of data depending on what the blockchain is used for. 
  However, at its heart, a block will always contain a timestamp or the data regarding the time when the block was created. A block will also always contain a unique hash or a unique code produced by combining all the contents within the block itself — 
  also known as a digital fingerprint. Lastly, a block will also always contain a previous hash or a reference to the prior block’s hash. This reference to the prior block is how blocks chain to one another. We will dive into more details about the hash later. 
  These attributes about a block are what make it part of a blockchain structure.', order: 4, course: course)


Chapter.create(name: 'Hashing', level:1, content:'Hashing is an application of cryptography that is fundamental to the design of the blockchain. It is a way to generate a seemingly random, but calculated string of letters and numbers from any input. This is accomplished by the use of a hash function.
chine that takes an object, such as an apple, and turns it into a varying combination of letters and numbers, such as “1a432bf”. The output (“1a432bf”) is known as the hash of the input, the apple. If you give the machine two apples instead of one, it will return a different hash (such as “26f5ce1”).
  There are many types of machines out there, so the resulting hash varies from machine to machine. Similarly, there are many types of hash functions available. Blockchain uses a cryptographic hash function, meaning that the output is random but deterministic. 
  This means the same input will always produce the same hash. That process is one-way, so the output (hash) cannot be used to produce the original input.', order: 5, course: course)
Chapter.create(name: 'The Genesis Block', level:1, content: "To recap, a blockchain is similar to a permanent book of records — it keeps an accurate unchanging record of all data, or transactions, stored in chronological order. Each block has a reference to the block’s previous hash. This is how blocks are “chained” together. If a block’s contents are tampered with, the block’s hash changes and the chain breaks, making it difficult to successfully tamper with any one piece of the chain.

Since all blocks in the blockchain have a reference to the previous block, the first block is a little different than the rest. It is known as the Genesis Block. The problem, however, is that the Genesis Block does not have a block before it. So it wouldn’t make sense to have a previous hash stored inside it. To resolve this minor issue, the value of the previous hash is typically hard-coded into the Genesis Block with the default value of zero.", order: 6, course: course)

puts "Dummy course # #{i}"


i += 1 

end

# Chapters_Tests

Course.all.each do |course|
course.chapters.each do |chapter|
  puts "#{chapter.name}"
  Test.create(question: " What is the meaning of life", answers: ["A", "42", "C"], correct_answer: "42", chapter: chapter)
  puts "#{Test.last.chapter.name}"
end
end

puts  "Seed Done"


#Courses_3

course3= Course.create(name: 'Cryptocurrency for Investors')


Chapter.create(
  name: 'What is Cryptocurrency Game Theory: A Basic introduction ',
  level:1,
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

  


  summary: 'If you want to start investing cryptocurrencies this is a great place to start, we dive deeper into tokens and their economies', order: 1, course: course1
)

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

  ',
  order: 2, course: course1
)