
=begin
Co-authored-by: IrenehMDev <ireneh.dev_03@icloud.com>
Co-authored-by: DiegoSteve <diegosteve123321@gmail.com>
Co-authored-by: rene3255 <ranchoeltecal@gmail.com>

* = Strike
/ = Spare 

| [1][4] 5|; | 

| 1,* : 5| ; |
=end

class DisplayScore
  
    attr_accessor :first_ball

    def initialize(first_ball)
        @first_ball = first_ball
    end

    def shotball
        puts "the value  #{rand(10).to_s}"
    end    

    def values
        try1 = rand(10) 
        puts try1
        #x = 10 - try1
        try2 = rand(10-try1) 
        puts try2
        
    end
end

def score 
  score = 0
#if strikes
# score = 10 + nextframe(6,4)
#else if spare
# score = 10 + nextframe(1)
# if try
#frame(x,y)
    10.times do 
        print "| [variable_uno][variable_dos] variable_suma|;"
    end
    score
end

 lets_play = DisplayScore.new(10)

# lets_play.first_ball = 1000
# puts lets_play.first_ball
lets_play.values
