require 'pry'
class CLI

    def start
        puts "Welcome anime fan!"
        puts "Please choose a genre by name or the top50 list."
        puts "1.Action
            2.Adventure
            3.Comedy
            4.Mystery
            5.Drama
            6.Fantasy
            7.Kids
            8.Romance
            9.Super Power
            10.Psychological
            11.Thriller"
        genre
        anime_information
    end

    def genre
        input = ""
        while input != "exit"
            input = gets.strip

            case input 
            when 'Action'
                API.action 
                anime_information
            when 'Adventure'
                API.adventure 
            when 'Comedy'
                API.comedy 
            when 'Mystery'
                API.mystery
            when 'Drama'
                API.drama 
            when 'Fantasy'
                API.fantasy
            when 'Kids'
                API.kids 
            when 'Romance'
                API.romance 
            when 'Super Power'
                API.super_power
            when 'Psychological'
                API.psychological 
            when 'Thriller'
                API.thriller
            when 'exit'
                exit
            else
                "Please type in a valid request"
            end
        end
        
    end

    def anime_information
        puts "Please type the number of the anime you would like more information of."
        input = ""
        while input != "exit"
            input = gets.strip.to_i
        if (1..Anime.all.length).include?(input)
            anime = Anime.all[input - 1]
            puts "Anime Title:#{anime.title}, 
            Synopsis:#{anime.synopsis}, 
            URL:#{anime.url}, 
            Type:#{anime.type}, 
            Number of Episodes:#{anime.episodes}, 
            Score:#{anime.score}" 
        end
        puts "Would you like to go back or exit?"
         input = gets.strip
         if input == "go back"
            start
         else
            exit
         end
        end

    end
end

    

        



        

