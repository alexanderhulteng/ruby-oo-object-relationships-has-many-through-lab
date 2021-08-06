class Artist
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
        Song.all.select {|k| k.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        Song.all.map do |l|
          l.genre
        end
      end






end
