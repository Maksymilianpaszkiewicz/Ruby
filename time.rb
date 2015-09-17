class Time
  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  def print
    puts "#{@hours}:#{@minutes}:#{@seconds}"
  end

  def set h, m, s
    if h  >= 0 && h <= 23
      @hours = h
    else
      @hours = 0
      puts "incorrect hour value"
    end
    if m  >= 0 && m <= 59
      @minutes = m
    else
      @minutes = 0
      puts "incorrect minute value"
    end
    if s  >= 0 && s <= 59
      @seconds = s
    else
      @seconds = 0
      puts "incorrect hour value"
    end
  end

  def advance
    if @seconds == 59
      @seconds = 0

      if @minutes == 59
        @minutes = 0

        if @hours == 23
          @hours = 0
        else
          @hours+=1
        end

      else
        @minutes+=1
      end

    else
      @seconds+=1
    end

  end


end


timer = Time.new
timer.print

for i in 0..10000
  timer.advance
end

timer.print