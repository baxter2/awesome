require 'pry'
module Monopoly
  class Tile
    attr_reader :name, :buyable

    def initialize(name: name, buyable: false) 
      @name = name
      @buyable = buyable 
    end
  end

  class Property
    attr_reader :name, :buyable, :price

    def initialize(name: name, buyable: true, price: price) 
      @name = name
      @buyable = buyable 
      @price = price
    end
  end

  class Station 
    attr_reader :name, :buyable, :price

    def initialize(name: name, buyable: true, price: price) 
      @name = name
      @buyable = buyable 
      @price = price
    end
  end

  class Board
    attr_reader :tile_mappings    

    def initialize(tile_mappings: [])
      @tile_mappings = tile_mappings 
    end

    def build_v1
      hash = {}
      hash[0] = Tile.new(name: "Go")
      hash[1] = Property.new(name: "Old Kent Road", price: 60)
      hash[2] = Tile.new(name: "Community Chest")
      hash[3] = Property.new(name: "Whitechapel Road", price: 60)
      hash[4] = Station.new(name: "King's Cross Station", price: 200)
      hash
    end

    def build_v2
      (0..((tile_mappings.size) - 1)).each_with_object({}) do |index, grid| 
                                                             grid[index] = create_instance(index) 
                                                           end
    end

    private
# {:class=>:Tile, :name=>"Go", :buyable=>false}
# https://stackoverflow.com/questions/3908380/ruby-class-types-and-case-statements
    def create_instance(index)
      klass = tile_mappings[index][:class] 
      if :Tile === klass
        klass = tile_mappings[index].delete(:class)
        Monopoly.const_get(klass).new(tile_mappings[index])
      elsif :Property === klass
        klass = tile_mappings[index].delete(:class)
        Monopoly.const_get(klass).new(tile_mappings[index])
      elsif :Station === klass
        klass = tile_mappings[index].delete(:class)
        Monopoly.const_get(klass).new(tile_mappings[index])
      end
    end

  end
end
