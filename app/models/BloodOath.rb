#One BO has one Follower and One BO has one Cult (SSOT?)

class BloodOath

    attr_reader :follower, :cult, :initiation_date

    @@all = []

    def initialize(follower, cult, initiation_date=nil)
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        # _YYYY-MM-DD_

        @@all.push(self)
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all.first.follower
    end

end