 // JavaScript Telephone

// My role in the group is: Refactor and Translate to User Stories

// Here is my part of the challenge:

// ----------Received from person #3----------

// var sum = function(input) {
// var add_up = 0;
// for (i = 0 ; i < input.length ; i++) {
// add_up += input[i];
// }
// console.log(add_up);
// }

// var mean = function(input) {
// var add_to = 0;
// for (i = 0; i < input.length; i++) {
// add_to += input[i];
// }
// var total = add_to / input.length;
// console.log(total);
// }
// mean([1, 2, 3, 4, 5, 5, 7]);

// var median = function(input) {
// var sorted = input.sort();
// var sum = sorted.length
// if (sum % 2 == 0) {
// var index_1 = sum/2;
// var index_2 = index_1 - 1;
// var med = (input[index_1] + input[index_2])/2;
// console.log(input[index_1]);
// }
// else {
// var index_1 = (sum/2) + 1;
// var floored = Math.floor(index_1);
// console.log(floored);
// }

// }



// ----------My code----------

var sum = function(input) {
	var add_up = 0;
		for (var i = 0 ; i < input.length ; i++) {
			add_up += input[i];
		};
	console.log(add_up);
};

// I tried to refactor this with .reduce, but couldn't quite figure it out.
// Otherwise (for what I assume sum does) this is nice and DRY.
// Don't forget to set the variable in your for loop (IE var i = 0)


var mean = function(input) {
	var add_to = 0;
		for (var i = 0; i < input.length; i++) {
			add_to += input[i];
		}  
	console.log(add_to / input.length);
}

// Again, nice and DRY. The only thing I did was remove the total variable.
// We could change
//   for (var i = 0; i < input.length; i++)
// to
//   for (var i = 0; n = input.length; i<n; i++)
// to make it run faster, but that's definitely less DRY


var median = function(input) {
	var sorted = input.sort();
	var sum = input.length
		if (sum % 2 == 0) {
			console.log((sorted[(sum/2)] + sorted[(sum/2 -1)])/2);
		}
		else {
			console.log(sorted[Math.floor(sum/2)]);
		}
}

// Woah! This one didn't work at all.
// I gather that it was a median function so I wrote to that.
// After fixing, I removed all of the unnecessary variables.
// I also revised variables that built off prior variables if they could be derived from the initial input.



// ----------User Stories----------

// As a user, I have a list of numbers.
// I'd like to be able to do 3 things:
// 1. Add all of the numbers together
// 2. Find the average (mean) of all of the numbers
// 3. Find the median (middle) number

// I'd like to be able to see all of these things, but not keep any of the resulting numbers for later.

