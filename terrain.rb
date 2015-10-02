class Terrain

  def initialize(file_name)
    lines = IO.readlines(file_name)
    @size = lines[0].to_i
    @terrain_cells = []
    (1..@size).each do |i|
      @terrain_cells[i-1] = []
      cells = lines[i].split
      (0..9).each do |j|
        @terrain_cells[i-1][j] = cells[j];
      end

    end

  end

  def print
    @terrain_cells.each do |val|
      s = ""
      val.each do |cell|
        s+=cell+" "
      end
      puts s
    end
  end




end


t = Terrain.new("terrain.dat")

t.print