#run file for BloodOath lab

require 'pry'
require './BloodOath.rb'
require './Cult.rb'
require './Follower.rb'

flower_cult = Cult.new("Flower Club", "California", 2008)
baking_cult = Cult.new("Baking Group", "New York", 2002)
a_positive = Cult.new("A+ Crew", "Texas", 1905)

jacob = Follower.new("Jacob", 23)
kevin = Follower.new("Kevin", 27)
wilma = Follower.new("Wilma", 38)
veronica = Follower.new("Veronica", 25)

jacob.join_cult(baking_cult, "_2005-12-13_")
jacob.join_cult(flower_cult)

kevin.join_cult(a_positive)
baking_cult.recruit_follower(kevin, "_2012-03-23_")

bloodoath_one = BloodOath.new(wilma, flower_cult)
a_positive.recruit_follower(wilma, "_2020-11-01_")

bloodoath_two = BloodOath.new(veronica, baking_cult)
veronica.join_cult(flower_cult, "_2008_01_01")

binding.pry

puts "Mwahahaha!"