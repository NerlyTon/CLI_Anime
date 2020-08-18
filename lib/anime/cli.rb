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
    end

    def genre
        input = ""
        while input != "exit"
            input = gets.strip

            case input 
            when 'Action'
                API.action 
            when 'Adventure'
                API.adventure 
            when 'Comedy'
                API.comdey 
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
    
    end


        
end


        

