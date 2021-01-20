#One cult can have many followers and one follower can have many cults
#One cult needs one bloodoath for one follower
###BloodOath looks like SSOT?

class Cult

    attr_reader :name, :location, :founding_year
    attr_accessor :slogan

    @@all = []

    def initialize(name, location, founding_year)
        @name = name
        @location = location
        @founding_year = founding_year

        @@all.push(self)
    end

    def recruit_follower(follower)
        #adds to the cults list of followers (go through SSOT though, likely BO instance?)
    end

    def cult_population
        #number of member in this cult (i.e. number of BOs with this cult?)
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        #returns a cult with name given in arg
    end

    def self.find_by_location(location)
        #returns array of cults in location
    end

    def self.find_by_founding_year(year)
        #returns all cults founded in that year
    end

end