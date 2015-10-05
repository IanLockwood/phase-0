 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Test your memory and match everything!
// Goals: Match every letter with its pair.
// Characters: You and your opponent.
// Objects: Guesses, you, opponent
// Functions: guessing, checking, comparing win/loss


// Refactored Code

var win = false
var lose = false
var board = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p"]


var guesses = {

a: "birds",
b: "naps",
c: "fear",
d: "white water rafting",
e: "white water rafting",
f: "calcium",
g: "contentedness",
h: "naps",
i: "calcium",
j: "skateboarding",
k: "birds",
l: "skateboarding",
m: "fear",
n: "elbow",
o: "elbow",
p: "contentedness",
}

var me = {
	name: "Me",
	successes: 0,
	failures: 0
}

var opponent = {
	name: "Opponent",
	successes: 0,
	failures: 0
}

function check() {
	console.log(me);
	console.log(opponent);
}

function opp_guess() {
	var num = Math.floor((Math.random() * 100) + 1);
	if (num < 20){
		opponent.successes++
	}
	else {
		opponent.failures++
	};
};

function guess(x, y) {
	console.log(x);
	console.log(y);
	if (x == y){
		console.log("Correct!");
		me.successes++;
		opp_guess();
	}
	else {
		console.log("Incorrect!");
		me.failures++;
		opp_guess();
	};
	check()
}


function win_or_lose() {
while (win == false && lose == false) {
	if ((4 + me.successes - me.failures) < (opponent.successes - opponent.failures)) {
		lose = true;
		console.log("You lost confidence! You lose!");
	}
	else if (me.successes == 8) {
		win = true;
		console.log("You win! Congratulations");
	}
	else if (opponent.successes == 8) {
		lose = true
		console.log("Your opponent guessed everything! YOU LOSE.");
	}
	else {
		var x = window.prompt("Enter your first guess", "") ;
		var y = window.prompt("Enter your second guess", "") ;
		guess(guesses[x], guesses[y])
	}

};

};

console.log("Welcome to Ian's guessing game! Get ready to test your memory! This works just like your average flip-and-match guessing game. Enter your first and second guesses and try to match everything. Here is your board:")

console.log(board)

console.log("There are 16 possible guesses - the letters a through p. Oh, and one more thing - If your opponent gains too much of an advantage, you'll lose confidence and lose the game. Stay chipper!")

win_or_lose()


// Reflection
//
// What was the most difficult part of this challenge?
// 	Keeping my expectations realistic.

// What did you learn about creating objects and functions that interact with one another?
// 	It goes pretty easily if you plan and lay out in a simple, understandable way.
// 	The trick is in the give-and-take of local and global variables.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// 	I got more experience with prompt and working in dev tools.

// How can you access and manipulate properties of objects?
// 	A ton of ways - the coolest is adding to them and changing them with the simple .key syntax.


// My apologies for submitting a pretty underwhelming solo challenge - I had been creating a super complex game but I did not give myself enough time.
// So I ended up having to scrap it and do something really simple.
// If you'd like to check back by the end of the week, I may have the other game up.
// From this challenge I certainly learned a good lesson about time management.



