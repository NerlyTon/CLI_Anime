
class API


    def self.action

    action = RestClient.get 'https://api.jikan.moe/v3/genre/anime/1/1' 
    action_hash = JSON.parse(action.body, symbolize_names:true)
    action_arr = action_hash[:anime]
    
    action_instances = action_arr.map do |action_h|
    Anime.new(action_h)
        
    end

    action_instances.each.with_index(1) do |k, i|
        puts "#{i}. #{k.title}"
    
    end
    
        # binding.pry
    end

    def self.adventure

    adventure = RestClient.get 'https://api.jikan.moe/v3/genre/anime/2/1'
    adventure_hash = JSON.parse(adventure.body, symbolize_names:true)   
    adventure_arr = adventure_hash[:anime]
    
    adventure_instances = adventure_arr.map do |adv_hash|
        Anime.new(adv_hash)
        end
        binding.pry
    end

    def self.comedy

    comedy = RestClient.get 'https://api.jikan.moe/v3/genre/anime/4/1'
    comedy_hash = JSON.parse(comedy.body, symbolize_names:true)
    comedy_arr = comedy_hash[:anime]
        
    comedy_instances = comedy_arr.map do |comedy_hash|
        Anime.new(comedy_hash)
        end
    end

    def self.mystery

    mystery = RestClient.get 'https://api.jikan.moe/v3/genre/anime/7/1'
    mystery_hash = JSON.parse(mystery.body, symbolize_names:true)
    mystery_arr = mystery_hash[:anime]
    
    mystery_instances = mystery_arr.map do |mystery_hash|
        Anime.new(mystery_hash)
        end
    end

    def self.drama

    drama = RestClient.get 'https://api.jikan.moe/v3/genre/anime/8/1'
    drama_hash = JSON.parse(drama.body, symbolize_names:true)
    drama_arr = drama_hash[:anime]
    
    drama_instances = drama_arr.map do |drama_hash|
        Anime.new(drama_hash)
        end
    end

    def self.fantasy

    fantasy = RestClient.get 'https://api.jikan.moe/v3/genre/anime/10/1'
    fantasy_hash = JSON.parse(fantasy.body, symbolize_names:true)
    fantasy_arr = fantasy_hash[:anime]
    
    fantasy_instances = fantasy_arr.map do |fantasy_hash|
        Anime.new(fantasy_hash)
        end
    end


    def self.kids

    kids = RestClient.get 'https://api.jikan.moe/v3/genre/anime/15/1'
    kids_hash = JSON.parse(kids.body, symbolize_names:true)
    kids_arr = kids_hash[:anime]
    
    kids_instances = kids_arr.map do |kids_hash|
        Anime.new(kids_hash)
        end
    end


    def self.romance

    romance = RestClient.get 'https://api.jikan.moe/v3/genre/anime/22/1'
    romance_hash = JSON.parse(romance.body, symbolize_names:true)
    romance_arr = romance_hash[:anime]
    
    romance_instances = romance_arr.map do |romance_hash|
        Anime.new(romance_hash)
        end
    end


    def self.super_power

    super_power = RestClient.get 'https://api.jikan.moe/v3/genre/anime/31/1'
    super_power_hash = JSON.parse(super_power.body, symbolize_names:true)
    super_power_arr = super_power_hash[:anime]
    
    super_power_instances = super_power_arr.map do |super_power_hash|
        Anime.new(super_power_hash)
        end
    end

    def self.psychological

    psychological = RestClient.get 'https://api.jikan.moe/v3/genre/anime/40/1'
    psychological_hash = JSON.parse(psychological.body, symbolize_names:true)
    psychological_arr = psychological_hash[:anime]
    
    psychological_instances = psychological_arr.map do |psychological_hash|
        Anime.new(psychological_hash)
        end
    end



    def self.thriller

    thriller = RestClient.get 'https://api.jikan.moe/v3/genre/anime/41/1'
    thriller_hash = JSON.parse(thriller.body, symbolize_names:true)
    thriller_arr = thriller_hash[:anime]
    
    thriller_instances = thriller_arr.map do |thriller_hash|
        Anime.new(thriller_hash)
        end
    end

end


    # def self.top_50_tv
    # response_tv = RestClient.get 'https://api.jikan.moe/v3/top/anime/1/tv'
    # anime_tv_hash = JSON.parse(response_tv.body, symbolize_names:true)
    # end

    # def self.top_50_mov
    # response_mov = RestClient.get 'https://api.jikan.moe/v3/top/anime/1/movie'
    # anime_mov_hash = JSON.parse(response_mov.body, symbolize_names:true)
    # end

    # def self.top_50_pop
    # response_pop = RestClient.get 'https://api.jikan.moe/v3/top/anime/1/bypopularity'
    # anime_pop_hash = JSON.parse(response_pop.body, symbolize_names:true)
    # end

