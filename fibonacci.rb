def fibs(number, solution=[0,1])
	(number - 2).times do
		solution << solution[-1] + solution [-2]
	end
	solution
end

puts fibs(10)

def fibs_rec(number, solution=[0,1])
	solution << solution[-1] + solution [-2]
	fibs_rec(number - 1, solution) if number > 0
	solution.pop(2)
end

puts fibs_rec(10)