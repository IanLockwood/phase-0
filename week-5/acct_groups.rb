# Ian Lockwood

# PSEUDOCODE
# 1. DEFINE a method called acc_groups that takes an array as an argument.
# 2. SPLIT the array into groups of 4
# 	2.1 IF there is 1 person left over, add them to the last group
# 	2.2 ELSIF there are 2 people left over, remove one from the penultimate group and add it to the last group
# 3. RETURN the array of arrays


# def acc_groups (arr)
# 	if arr.length % 4 == 1
# 		extra = [arr.pop, arr.pop, arr.pop, arr.pop, arr.pop]
# 		new_arr = arr.each_slice(4).to_a
# 		new_arr.push(extra)
# 	elsif arr.length % 4 == 2
# 		extra = [arr.pop, arr.pop, arr.pop]
# 		new_arr = arr.each_slice(4).to_a
# 		new_arr.push(extra)
# 	else
# 		arr.each_slice(4).to_a
# 	end
# end




# PSEUDOCODE (with randomization)
# 1. DEFINE a method called acc_groups that takes an array as an argument.
# 2. SHUFFLE the array
# 3. SPLIT the array into groups of 4
# 	3.1 IF there is 1 person left over, add them to the last group
# 	3.2 ELSIF there are 2 people left over, remove one from the penultimate group and add it to the last group
# 4. RETURN the array of arrays


def acc_groups (arr)
	arr.shuffle!
	if arr.length % 4 == 1
		extra = [arr.pop, arr.pop, arr.pop, arr.pop, arr.pop]
		new_arr = arr.each_slice(4).to_a
		new_arr.push(extra)
	elsif arr.length % 4 == 2
		extra = [arr.pop, arr.pop, arr.pop]
		new_arr = arr.each_slice(4).to_a
		new_arr.push(extra)
	else
		arr.each_slice(4).to_a
	end
end

people = ["Shunqian Luo", "Kim Allen", "Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi", "Un Choi", "Kristie Choi", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Aurelio Garcia", "Hector Gomez", "Ricky Hu", "Kai Huang", "Alex Jamar", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson", "Ian Lockwood", "Alison Lyons", "Christopher Mark", "Lauren Markzon", "Miguel Melendez", "David O'Keefe", "Nathan Park", "Landey Patton", "Farman Pirzada", "Samuel Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Michael Silberstein", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee", "EXTRA 1", "EXTRA 2"]


print acc_groups(people)




# REFLECTION

# What was the most interesting and most difficult part of this challenge?
# 	The most interesting part of this challenge was the general puzzle solving of coming up with an initial solution.
# 	The most difficult part was, for the first time, debugging. It took me a LONG time to find my problems.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# 	Yes, definitely.

# Was your approach for automating this task a good solution? What could have made it even better?
# 	I think it was! It would be better if I could find a built in method for minimum-group-size, rather than pop-ing multiple times.

# What data structure did you decide to store the accountability groups in and why?
# 	An array with subarrays. We didn't need a hash because the names of the groups were not important - it would have been overkill.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# 	I learned shuffle, which is an awesome, easy way to randomize.
# 	And I learned each_slice, which I could have used A MILLION TIMES BEFORE NOW.

