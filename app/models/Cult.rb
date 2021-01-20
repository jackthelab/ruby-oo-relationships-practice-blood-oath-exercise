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

    def recruit_follower(follower, initiation_date=nil)
        #adds to the cults list of followers (go through SSOT though, likely BO instance?)
        new_b_o = BloodOath.new(follower, self, initiation_date)
    end

    def cult_population
        #number of member in this cult (i.e. number of BOs with this cult?)
        initiations = BloodOath.all.select { |bo| bo.cult == self }
        return initiations.count
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        #returns a cult with name given in arg
        return self.all.find { |cult| cult.name == name }
    end

    def self.find_by_location(location)
        #returns array of cults in location
        return self.all.select { |cult| cult.location == location }
    end

    def self.find_by_founding_year(year)
        #returns all cults founded in that year
        return self.all.select { |cult| cult.founding_year == year }
    end

end