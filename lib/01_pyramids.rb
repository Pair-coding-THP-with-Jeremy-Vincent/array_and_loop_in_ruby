def input
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	print "> "
	floor = gets.chomp.to_i
	
	if floor.even? then
		puts "on a dit un nombre impair mec!"
		return -1

	else
		return floor / 2
	end
end

def pyramid(hf)
  hf.times {|n|
    print ' ' * (hf - n)
    puts '*' * (2 * n + 1)
  }
  hf.downto(0) {|n|
    print ' ' * (hf - n)
    puts '*' * (2 * n + 1)
  }
end

def perform
	pyramid(input)
end

perform
