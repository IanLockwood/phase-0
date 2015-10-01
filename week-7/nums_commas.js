// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Awilda Canteres.

// 0. Pseudocode
// 1. DEFINE a function called commas that takes a number as an argument
// 2. IF the number < 1000
// 3. RETURN IT
// 4. ELSE
// 5. SPLIT that number into an array of single-digit strings
// 6. INSERT a comma at every -4 idx position
// 7. STOP when the index position <= -(the length of the number)



// 1. Initial Solution

function commas(integer) {
    if (integer < 1000) {
      return integer;
    }
    else {
      var idx = -3;
      var count = 0;
      var arr = integer.toString().split("");
      while (-idx < integer.toString().length + count) {
      arr.splice(idx, 0, ",");
      idx -= 4;
      count++
    };
      return arr.join("");
  };
};

// 3. Refactored Solution

// var comma = function(integer) {
//   return integer.toLocaleString();
// };

// 4. Reflection

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  Tough! The syntax seems so weird. I approached it a bit differently but not in a not-Ruby way.

What did you learn about iterating over arrays in JavaScript?
  Doing it long-hand is actually a lot easier in JavaScript, but I don't get how to do it shorthand.

What was different about solving this problem in JavaScript?
  Mainly the way the loop worked - it was actually a lot easier.

What built-in methods did you find to incorporate in your refactored solution?
  .toLocaleString
