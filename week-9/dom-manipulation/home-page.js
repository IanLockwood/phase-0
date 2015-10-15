// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
var element = document.getElementById("release-0"); 
element.classList.add("done");


// Release 1:
var element = document.getElementById("release-1").style.display="none";


// Release 2:
// var element = document.getElementById("h1").innerHTML = "I completed release 2";
var element = document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2";


// Release 3:
var element = document.getElementById("release-3").style.background="#955251";


// Release 4:
// var element = document.getElementsByClassName("release-4").style.fontSize
var element = document.getElementsByClassName('release-4');
var i;
for (i = 0; i < element.length; i++) {
  element[i].style.fontSize="2em";
}


// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


// REFLECTION

// What did you learn about the DOM?
// 	I mean like everything, I had little knowlege before.
// 	It's a cool external way to manipulate html/css with JavaScript.

// What are some useful methods to use to manipulate the DOM?
// 	All of the getElement(s)By methods are crucial, and of course .style and the template business.
