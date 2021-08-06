class Genre
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all {|h| h.genre == self}



    end

    def artists 
        Song.all.map do |y|
            y.artist
        end

    end




end



