// GROCERY LIST CHALLENGE

// PSEUDOCODE
// 1. Create a new list
// 	- Just start with a new list
// 	- Give options:
// 		- A for Add (2)
// 		- R for Remove (3)
// 		- U for Update quantities (4)
// 		- P for Print (5)

// 2. Add an item with a quantity to the list
// 	- Ask the user what they'd like to add 
// 	- Get user input
// 	- Ask what quantity
// 	- Get user input
// 	- Add to the list

// 3. Remove an item from the list
// 	- Ask which item
// 	- Get user input
// 	- delete item

// 4. Update quantities for items in your list
// 	- Ask which item
// 	- Get user input
// 	- Update associated quantity

// 5. Print the list (Consider how to make it look nice!)
// 	- Print it!




function list_maker() {

var list = {};

	function create() {

		console.log("Welcome to Grocery List Maker! Get ready for the ride of your life!");
		console.log("What would you like in your list?");
		var item = prompt("What would you like to add? (Hit OK with nothing typed or hit Cancel when finished)", "");

		while (item != null && item != "") {
			var quant = parseInt(prompt("How many do you need to purchase?", ""));
			list[item] = quant;
			var item = prompt("What would you like to add? (type 'done' when finished)", "");
		}; // while
	}; // create

	function print() {
		console.log("----------Your List----------");
			for (key in list) {
				console.log(list[key], key);
			}
		console.log("-----------------------------")
	};


	function options() {
		console.log("What would you like to do?");
		var choice = prompt("(A)dd an item / (R)emove an item / (U)pdate a quantity / (P)rint your list? / (E)xit", "");

			if (choice == "A") {
				var item = prompt("What would you like to add?", "");
				var quant = parseInt(prompt("How many do you need to purchase?", ""));
				list[item] = quant;
				options();
			}

			else if (choice == "R") {
				var item = prompt("What would you like to remove?", "");
				delete list[item];
				console.log(list);
				options();
			}

			else if (choice == "U") {
				var item = prompt("What would you like to change?", "");
				var quant = parseInt(prompt("How many do you need to purchase?", ""));
				list[item] = quant;
				options();
			}

			else if (choice == "P") {
				// console.log(list)
				print();
				options();
			}

			else if (choice == "E") {
				console.log("Thanks for using Grocery List Maker!")
			}

			else {
				console.log("That's not an option!");
				options();
			}
	}; // options

create()
options()

}; // master end

list_maker()





