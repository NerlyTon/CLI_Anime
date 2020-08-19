require 'pry'
class CLI

    def start
        puts "Welcome anime fan!"
        puts "Please choose a genre by name."
        puts ""
        puts   "1.Action 
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
    end

    def genre
        input = ""
        while input != "exit"
            input = gets.strip.downcase
            API.genres(input)

            display_name
            anime_information
        end
        
    end
def display_name
    Anime.all.each.with_index(1) do |k, i|
        puts "#{i}. #{k.title}"
    end
end

            
            
            
            
            
    #         case input 
    #         when 'Action'
    #             API.action 
    #             anime_information
    #         when 'Adventure'
    #             API.adventure
    #             anime_information 
    #         when 'Comedy'
    #             API.comedy
    #             anime_information 
    #         when 'Mystery'
    #             API.mystery
    #             anime_information
    #         when 'Drama'
    #             API.drama
    #             anime_information 
    #         when 'Fantasy'
    #             API.fantasy
    #             anime_information
    #         when 'Kids'
    #             API.kids
    #             anime_information 
    #         when 'Romance'
    #             API.romance
    #             anime_information 
    #         when 'Super Power'
    #             API.super_power
    #             anime_information
    #         when 'Psychological'
    #             API.psychological
    #             anime_information 
    #         when 'Thriller'
    #             API.thriller
    #             anime_information
    #         when 'exit'
    #             exit
    #         else
    #             "Please type in a valid request"
    #         end
    #     end
        
    # end

    def anime_information
        puts "Please type the number of the anime you would like more information of."
        input = ""
        while input != "exit"
            input = gets.strip.to_i
        if (1..Anime.all.length).include?(input)
            anime = Anime.all[input - 1]
            puts "---------------- Anime Title:#{anime.title}, ----------------------
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

    

        



        

