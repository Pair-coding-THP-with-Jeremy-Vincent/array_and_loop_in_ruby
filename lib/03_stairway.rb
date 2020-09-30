#Variables
number_of_games = 10
#total_of_loop = 0
total_of_loop = Array.new()

#Functions
def stairs
    level = 0
    i = 0
    
    while level < 10
        n = rand(1..6)

        if n >= 5 then
            level = level + 1
        elsif n < 5 && n > 1 then
            level = level
        elsif n == 1 then
            level = level - 1
        end
        #puts "Tu es actuellement à la marche : #{level} !"
        if level < 0 then
            level = 0
        end
        i = i + 1
    end
    #puts "Bravo tu as atteint le niveau 10 !"
    #puts i
    return i
end

#Control
number_of_games.times do |e|
    total_of_loop[e] = stairs
end

average_total_of_loop = total_of_loop.sum(0.0)/total_of_loop.size

puts "Sur #{number_of_games} parties, la moyenne de lancé de dé pour arriver à la marche 10 est de : #{average_total_of_loop} !"