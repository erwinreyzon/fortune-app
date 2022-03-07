class MyExamplesController < ApplicationController

 
  def fortune_method

    fortune = ["bad luck", "good luck", "normal luck"]
    render json: fortune.sample

  end

  def lotto_method

    fortune = (1..60).to_a.shuffle!
    result = []
    6.times do
      result << fortune.pop
    end
    render json: result.join(" ")

  end

  def bottles_method

    bottles = 99
    song = []
    while true
      if bottles > 1
        song << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
        bottles -= 1
        song << "Take one down pass it around, #{bottles} on the wall"
      elsif bottles == 1
        song << "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer."
        bottles -= 1
        song << "Take one down pass it around, no more bottles on the wall"
      elsif bottles == 0
        song << "No more bottles of beer on the wall, no more bottles of beer."
        bottles = 99
        song << "Go to the store and buy some more, #{bottles} bottles of beer on the wall."
        break
      end
    end

      render json: song

  end


  def counter_method

    count = 0
    count += 1
    render json: {count: count}

  end

end