#One BO has one Follower and One BO has one Cult (SSOT?)

def BloodOath

    attr_reader :follower, :cult, :initiation_date

    @@all = []

    def initialize(follower, cult, initiation_date)
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        # _YYYY-MM-DD_

        @@all.push(self)
    end

    def self.all
        @@all
    end

end