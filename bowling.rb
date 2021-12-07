# frozen_string_literal: true

# Co-authored-by: IrenehMDev <ireneh.dev_03@icloud.com>
# Co-authored-by: DiegoSteve <diegosteve123321@gmail.com>
# Co-authored-by: rene3255 <ranchoeltecal@gmail.com>
#
# * = Strike
# / = Spare

# Frames
class Frame
  def initialize(roll = nil)
    @roll = roll
  end

  def first_try
    @roll.first
  end

  def second_try
    @roll.last
  end

  def last_frame
    strike || chuza if @roll
  end

  def strike
    first_try == 10
  end

  def chuza
    first_try + second_try == 10
  end

  def play_rolls
    @roll = []
    pins_try = rand(10)
    @roll.push(pins_try)
    pins_try2 = rand(10 - pins_try)
    @roll.push(pins_try2)
    @roll
  end
end

# DisplayScore display the scores
class DisplayScore < Frame
  attr_accessor :frames

  def initialize
    @frame = init_frame
    # score_total = 0
    super
  end

  def init_frame
    @frame = Array.new(9) { Frame.new }
  end

  #   def score
  #    10.times do
  #       score_total = if strike(frame)
  #                       10 + (@roll[frame + 1] + @roll[frame + 2])
  #                     elsif chuza(frame)
  #                       10 + @roll[frame + 1]
  #                     else
  #                       @roll[frame] + @roll[frame(+1)]
  #                     end
  #       # puts "Frame #{frame} y el score es #{score_total} "
  #     end
  #   end
end

new_frame = Frame.new
new_frame.play_rolls

new_game = DisplayScore.new
new_game.score
