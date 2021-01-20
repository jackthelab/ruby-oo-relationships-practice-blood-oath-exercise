#One follower can have many cults and one cult can have many followers
#One follower must make one bloodoath for one cult
###(BO looks like it could be SSOT)

class Follower

    attr_reader :name, :age
    attr_accessor :life_motto

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age

        @@all.push(self)
    end

    def cults
        #returns array of all cults this follower is a part of... from BOs?
    end

    def join_cult(cult)
        #adds this follower to the cult in arg... instantiate a BO?
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        #returns array of followers who are arg age or older
    end

end