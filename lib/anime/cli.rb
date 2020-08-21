require 'pry'
class CLI


# starts the program and list the options for the user 
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
9.Super Powers 
10.Psychological 
11.Thriller"
        genre
    end

  
# Receives the input and calls on the genres class method.
    def genre
        input = ""
        input = gets.strip.downcase
        if input != "exit"   
            API.genres(input)
            display_name
        end
        anime_information
    end

       
# sorts by alphabetical order and adds an index to each title.    
    def display_name
        Anime.all.sort {|a, b| a.title <=> b.title}.each.with_index(1) do |k, i|
        puts "#{i}. #{k.title}"
        end
    end

    
 # Receives the input and displays the specific information for the users choice. User is able to go back or exit program.   
    def anime_information
    puts "Please type the number of the anime you would like more information of."
    input = ""
    input = gets.strip.to_i
        
            if (1..Anime.all.length).include?(input)
                anime = Anime.all.sort_by(&:title)[input - 1]
            puts "---------------- Anime Title:#{anime.title}, ----------------------
Synopsis:#{anime.synopsis}, 
URL:#{anime.url}, 
Type:#{anime.type}, 
Number of Episodes:#{anime.episodes}, 
Score:#{anime.score}" 
            else input = !(1..Anime.all.length).include?(input)
                puts "Please input valid number"
                anime_information
            
            end
            puts "Would you like to go back or exit?"
            input = gets.strip
            if input == "go back"
                start
            else input == "exit"
                exit
            end
        end
    end


# def valid_anime?(input)
    #     if input == API.genres(input) 
    #         return true
    #     else
    #         return false
    #     end
    # end

    # def valid_num?(input)
    #     if input == (1..Anime.all.length)
    #         return true
    #     else
    #         return false
    #     end
    # end
    

# if valid_anime?(input) && input != "exit"
# valid_anime?(input) && valid_num?(input) &&
    
    # input != API.genres(input)
    # puts "Please input valid request"
            
    # def valid
    #     input == 
        
         
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

    

    

        



        

