## Math Game Planning

### Task 1: Extract Nouns for Classes

* Player
* Question
* Round

### Task 2: Write their roles

#### Player
* State:
  * Number of lives
* Behaviour:
  * Method to remove a life
#### Quetion
* State:
  * Question
  * Answer
* Behaviour:
  * Method to compare question & user response
#### Round
* State:
  * the 2 numbers from [1 - 20]
  * Who's Turn
* Behaviour
  * Method to display question & prompt for answer
    * Calls Question class method for question
    * Provides answer to Question method to check validity
  * Call Player method to lose life if required
#### Game
* State:
  * Round Number
* Behaviour
  * Game loop
    * Method to call round
    * Display round summary
    * End game after final round