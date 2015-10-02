

class Square_land

  attr_accessor :height
  def initialize
    @leftX = 0
    @topY = 0
    @size = 0
  end

  def print
    puts "Square is on #{@height} height, begins at #{@leftX}X#{@topY} and is size of #{@size} "
  end

  def find_square_size (terrain_cells, start_i, start_j, size)
    index = 1
    is_bigger = true;
    start_cell = terrain_cells[start_i][start_j]

    while (is_bigger)

      if (start_i + index < size && start_j + index < size)
        (0..index).each do |v|
          if (terrain_cells[start_i+v][start_j+index] != start_cell || terrain_cells[start_i+index][start_j+v] != start_cell)
            is_bigger = false
            break
          end
        end
      else
        is_bigger = false
      end
      if (is_bigger)
      index+=1
      end
    end

    return index
  end

  def find_max_square (terrain_cells, size)

    (0..size-1).each do |i|
      (0..size-1).each do |j|

        result = find_square_size(terrain_cells, i,j,size)
        if (result > @size || (result == @size && terrain_cells[i][j].height < @height))
          @size = result
          @topY = j
          @leftX = i
          @height = terrain_cells[i][j].height
        end

      end
    end

  end


end