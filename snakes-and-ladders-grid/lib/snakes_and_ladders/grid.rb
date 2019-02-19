module SnakesAndLadders
  class Grid
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
