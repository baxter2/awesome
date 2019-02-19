module SnakesAndLadders
  class Grid
    attr_reader :size, :tile_mappings, :default_tile

    def initialize(size:, tile_mappings: [], default_tile: :Cell)
      @size = size
      @tile_mappings = tile_mappings
      @default_tile = default_tile
    end

    def build_v1
      hash = {}  
      hash[1] = Portal.new(location: 1, destination: 3)
      hash[2] = Cell.new(location: 2)
      hash[3] = Cell.new(location: 3)
      hash[4] = Portal.new(location: 4, destination: 2)
      hash
    end

    def build_v2
      (1..size).each_with_object({}) { |index, grid| grid[index] = tile_at(index) }
    end

    private

      def tile_at(index)
        if mapping = tile_mappings.detect { |tile_map| tile_map[:location].equal?(index) }
          klass = mapping.delete(:class)
          SnakesAndLadders.const_get(klass).new(mapping)
        else
          SnakesAndLadders.const_get(default_tile).new(location: index)
        end
      end

  end 

  class Portal
    attr_reader :location, :destination

    def initialize(location: location, destination: destination)
      @location = location
      @destination = destination
    end
  end

  class Cell
    attr_reader :location

    def initialize(location: location)
      @location = location
    end
  end
end
