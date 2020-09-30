#Méthode Sign up
def set_password
    puts "Définissez un mot de passe"
    print "> "
    user_password = gets.chomp
    return user_password
end

#Méthode Login
def login(password)
    puts "Quelle est votre mot de passe ?"
    print "> "
    try_password_user = gets.chomp
    while try_password_user != password
        puts "Try again"
        print "> "
        try_password_user = gets.chomp
    end
    #return true
end

#Méthode Welcome Screen
def welcome_screen
    puts "Archive documents officiels de la NSA"
end

def perform 
    login(set_password)
    welcome_screen
end

perform