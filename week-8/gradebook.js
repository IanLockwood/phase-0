/*
Gradebook from Names and Scores
I worked on this challenge with: Zino Hu.
This challenge took me 1 hour.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.

/*
var gradebook = {
  Joseph: {
    testScores:scores[0]
  },
  Susan: {
    testScores:scores[1]
  },
  William: {
    testScores:scores[2]
  },
  Elizabeth: {
    testScores: scores[3]
  },
  addScore: function (name, score){
    this[name].testScores.push(score)
  },
  getAverage: function(name){
    var sum=0;
    for(var i=0;i<this[name].testScores.length;i++){
      sum+=this[name].testScores[i];
    }
    var average=sum/this[name].testScores.length;
    return average;
  },
  
};

function average(inputArray){
    var sum=0;
    for(var i=0;i<inputArray.length;i++){
      sum+=inputArray[i];
    }
    var average=sum/inputArray.length;
    return average;
};
*/


// __________________________________________
// Refactored Solution

var gradebook = {
  Joseph: {
    testScores:scores[0]
  },
  Susan: {
    testScores:scores[1]
  },
  William: {
    testScores:scores[2]
  },
  Elizabeth: {
    testScores: scores[3]
  },
  addScore: function (name, score){
    this[name].testScores.push(score)
  },
  getAverage: function(name){
    var sum=0;
    this[name].testScores.forEach(function(element){
      sum+=element;
    });
    var average=sum/this[name].testScores.length;
    return average;
  },
  
};

function average(inputArray){
    var sum=0;
    inputArray.forEach(function(element){
        sum+=element;
    });
    var averageValue=sum/inputArray.length;
    return averageValue;
};


// __________________________________________
// Reflect

/*

What did you learn about adding functions to objects?
  First, that you can do it.
  Second, that it's pretty similar in syntax, once you add in the use of the super handy this keyword.

How did you iterate over nested arrays in JavaScript?
  First we used a regular for loop, but with the addition of the this keyword.
  In our refactored solution, we used the .forEach method.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  Yes - .forEach

*/


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)