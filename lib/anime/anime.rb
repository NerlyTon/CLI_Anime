class Anime

# holds the information all into one place.
attr_accessor :title, :url, :synopsis, :type, :episodes, :score 
@@all = []

    def initialize(hash)
        self.title = hash[:title]
        self.url = hash[:url]
        self.synopsis = hash[:synopsis]
        self.type = hash[:type]
        self.episodes = hash[:episodes]
        self.score = hash[:score]
        @@all << self
    end

    def self.all
        @@all
    end

end

# def initialize(attributes)
#     attributes.each {|key, value| self.send(("#{key}="), value)}
    
# end
# def more_info
        
    # end