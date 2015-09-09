- What does puts do?

`puts` writes onto the screen whatever comes after it. It returns nil and prints the output to the console with a new line, as opposed to `print`, which has no new line, and `p`, which has no new line but returns the evaluated code.

- What is an integer? What is a float?

An integer is a number without a decimal point, whereas a float (short for floating-point-numbers) is a number with a decimal point.

- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integer division gives integer answers, and float division gives float answers. So 9.0 / 2.0 = 4.5, but 9 / 2 = 4. Why is integer division useful, for the layman? Well, much (most) of the time you'll want to know how many full divisions you can get. For instance, if you are at the grocery store, you have 9 dollars, and a loaf of bread cost 2 dollars, you can get 4 loaves, not 4.5. They wouldn't let you! Ruby programs are often very practical, so you'll want integer answers.


Hours in a year:
```ruby
puts 365 * 24
```

Minutes in a decade:
```ruby
puts 10 * 365 * 24 * 60
```


- How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby has built-in operators for all of these: `+` for addition, `-` for subtraction, `*` for multiplication, and `/` for division (and `%` for modulus...let's not get into that now). Note: you can't use commas in your numbers when performing these operations.

- What is the difference between integers and floats?

Integers have no decimals, floats have them.  
 Integer: 7  
 Float: 7.0

- What is the difference between integer and float division?

Integer division will return integers, float division will return floats.  
 9 / 4 = 2  
 9.0 / 4.0 = 4.25

- What are strings? Why and when would you use them?

Strings are a bunch of letters between quotes! "Like this." You use them all the time in Ruby when interacting with the user. Someone using your program probably won't understand your code, so you have to talk to them in plain English (or the plain version of another language).

- What are local variables? Why and when would you use them?

Variables are names that refer to a string or numbers. They can change or be reassigned, which is why they're called variables. Get it? Because they're variable?

- How was this challenge? Did you get a good review of some of the basics?

Pretty easy but super helpful - it was a great review of the very-basics.
