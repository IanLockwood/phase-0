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