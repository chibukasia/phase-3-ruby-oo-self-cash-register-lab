class Bartender
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def intro
        "Hello my name is #{name}"
    end

    def make_drink
        @cocktail_ingredients = []
        choose_liqour
        choose_mixer
        choose_garnish
        "Here is your drink. It contains #{@cocktail_ingredients}"
    end

    private
    def choose_liqour
        @cocktail_ingredients << "whiskey"
    end
    
    def choose_mixer
        @cocktail_ingredients << "vermouth"
    end

    def choose_garnish
        @cocktail_ingredients << "olive"
    end

end

phil = Bartender.new("phil")

puts phil.make_drink
puts Bartender.all