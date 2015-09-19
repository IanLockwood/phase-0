=begin
CREATING A NEW LIST
- Command from user to create a new list
- Initialize new list to work with
- Return the new list

ADD AN ITEM WITH A QUANTITY
- Define a new method that takes two arguments
- Take in the previous list
- Add the first elements to the hash as a key
- Add the second as the value
- Return the new list

REMOVE AN ITEM
- Define a new method that takes one argument
- Take in the previous list
- Locate the element in the list has that has the arg as key
- Delete that key/value pair from the hash
- Return the new list

UPDATE QUANTITIES
- Take in the earlier hash
- Define a new method that takes two arguments: the item and the new quantity
- Locate the item in the hash
- Replace the value with the new value
- Return the new list

PRINT THE LIST
- define a new method, needs no arguments
- output the list in a readable fashion
=end

def new_list(glist)
  groc_list = {}

  
  def add_item (item, quant, groc_list)
    groc_list[item] = quant
    puts "#{item} has been added to your list with a quantity of #{quant}!"
    return groc_list
  end
  
  def rem_item (item, groc_list)
    groc_list.delete(item)
    puts "#{item} has been removed from your list!"
    return groc_list
  end
  
  def upd_item (item, quant, groc_list)
    groc_list[item] = quant
    puts "The quantity of #{item} has been updated to #{quant}!"
    return groc_list
  end
  
  def prt_list (groc_list)
    puts "Your list contains:"
    puts "==================="
    groc_list.each {|item, quant|       
      puts item + " x " + quant
      }
    puts "==================="
  end
  
  
    running = 1
  while running == 1
    puts "WELCOME TO LIST #{glist}!"
    puts "What would you like to do?"
    puts "(A)dd Item / (R)emove Item / (U)pdate Item / (S)how List / (E)xit"
    selection = gets.downcase.chomp
    if selection == "a"
      puts "Enter your item: "
      item = gets.chomp
      puts "Enter the quantity: "
      quant = gets.chomp
      add_item(item, quant, groc_list)
    elsif selection == "r"
      puts "Which item would you like to remove?"
      item = gets.chomp
      rem_item(item, groc_list)
    elsif selection == "u"
      puts "Which item would you like to update?"
      item = gets.chomp
      puts "What is the new quantity?"
      quant = gets.chomp
      upd_item(item, quant, groc_list)
    elsif selection == "s"
      prt_list(groc_list)
    elsif
      selection == "e"
      puts "Goodbye!"
      running = 0
    else
      puts "That's not a command, silly!"
    end
  end
  
  
end

    print 
    
  puts "Welcome to your grocery list!"
  puts "What would you like to call your list today?"
  list_name = gets.chomp.upcase
  new_list(list_name)
  


What did you learn about pseudocode from working on this challenge?
  Pseudocode is VERY IMPORTANT for longer methods. I'm not sure I could have done this challenge without pseudocode.

What are the tradeoffs of using Arrays and Hashes for this challenge?
  Arrays are easier to manipulate but hashes are an order of magnitude more descriptive and functional.

What does a method return?
  This question is either a bit vague or I need to study a bit more, but I'm going to throw some possible answers at the wall.
  It returns whatever you want it to return!
    or
  Only things within the method
    or
  The variable you ask it to return after all of its changes.

What kind of things can you pass into methods as arguments?
  Lots of stuff - variables, any kind of object, arrays and hashes... 
  Can you pass methods in as arguments? 
  I just did some research and yes you can!

How can you pass information between methods?
  You can do what we did, which is branch methods off of the master method. You can also call methods as arguments.

What concepts were solidified in this challenge, and what concepts are still confusing?
  Longer methods and methods with more orders of magnitude were solidified, and I'm better at working with hashes. 
  I'm still not great at iteration and I could be better at general data flow.
