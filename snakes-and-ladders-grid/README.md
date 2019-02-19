```ruby
>> mappings = [{:class=>:Portal, :location=>1, :destination=>38}, {:class=>:Portal, :location=>4, :destination=>14}, {:class=>:Portal, :location=>9, :destination=>31}, {:class=>:Portal, :location=>16, :destination=>6}, {:class=>:Portal, :location=>28, :destination=>84}, {:class=>:Portal, :location=>36, :destination=>44}, {:class=>:Portal, :location=>40, :destination=>42}, {:class=>:Portal, :location=>47, :destination=>26}, {:class=>:Portal, :location=>49, :destination=>11}, {:class=>:Portal, :location=>51, :destination=>67}, {:class=>:Portal, :location=>56, :destination=>53}, {:class=>:Portal, :location=>62, :destination=>19}, {:class=>:Portal, :location=>64, :destination=>60}, {:class=>:Portal, :location=>71, :destination=>81}, {:class=>:Portal, :location=>80, :destination=>100}, {:class=>:Portal, :location=>87, :destination=>24}, {:class=>:Portal, :location=>93, :destination=>73}, {:class=>:Portal, :location=>95, :destination=>75}, {:class=>:Portal, :location=>98, :destination=>78}]

>> SnakesAndLadders::Grid.new(size: 100, tile_mappings: mappings, default_tile: :Cell)
=> <SnakesAndLadders::Grid:0x0
      @size=100, 
      @tile_mappings=[{:class=>:Portal, :location=>1, :destination=>38}, 
                      {:class=>:Portal, :location=>4, :destination=>14}, 
                      {:class=>:Portal, :location=>9, :destination=>31},
                      {:class=>:Portal, :location=>16, :destination=>6},
                      {:class=>:Portal, :location=>28, :destination=>84},
                      {:class=>:Portal, :location=>36, :destination=>44},
                      {:class=>:Portal, :location=>40, :destination=>42},
                      {:class=>:Portal, :location=>47, :destination=>26},
                      {:class=>:Portal, :location=>49, :destination=>11},
                      {:class=>:Portal, :location=>51, :destination=>67},
                      {:class=>:Portal, :location=>56, :destination=>53},
                      {:class=>:Portal, :location=>62, :destination=>19},
                      {:class=>:Portal, :location=>64, :destination=>60},
                      {:class=>:Portal, :location=>71, :destination=>81},
                      {:class=>:Portal, :location=>80, :destination=>100},
                      {:class=>:Portal, :location=>87, :destination=>24},
                      {:class=>:Portal, :location=>93, :destination=>73},
                      {:class=>:Portal, :location=>95, :destination=>75},
                      {:class=>:Portal, :location=>98, :destination=>78}]>
      @default_tile=:Cell>

>> SnakesAndLadders::Grid.new(size: 100, tile_mappings: mappings, default_tile: :Cell).build
=> {1=><SnakesAndLadders::Portal:0x007f9e74a60238 @destination=38, @location=1, @players=[]>,
    2=><SnakesAndLadders::Cell:0x007f9e74a60080 @location=2, @players=[]>,
    3=><SnakesAndLadders::Cell:0x007f9e74a601c0 @location=3, @players=[]>,
    4=><SnakesAndLadders::Portal:0x007f9e74a5bfa8 @destination=14, @location=4, @players=[]>,
    5=><SnakesAndLadders::Cell:0x007f9e74a5be40 @location=5, @players=[]>,
    6=><SnakesAndLadders::Cell:0x007f9e74a5bcd8 @location=6, @players=[]>,
    7=><SnakesAndLadders::Cell:0x007f9e74a5bb98 @location=7, @players=[]>,
    8=><SnakesAndLadders::Cell:0x007f9e74a5ba80 @location=8, @players=[]>,
    9=><SnakesAndLadders::Portal:0x007f9e74a5b990 @destination=31, @location=9, @players=[]>,
   10=><SnakesAndLadders::Cell:0x007f9e74a5b7d8 @location=10, @players=[]>,
   90=><SnakesAndLadders::Cell:0x007f9e74a494c0 @location=90, @players=[]>,
   91=><SnakesAndLadders::Cell:0x007f9e74a49380 @location=91, @players=[]>,
   92=><SnakesAndLadders::Cell:0x007f9e74a49290 @location=92, @players=[]>,
   93=><SnakesAndLadders::Portal:0x007f9e74a49128 @destination=73, @location=93, @players=[]>,
   94=><SnakesAndLadders::Cell:0x007f9e74a48fc0 @location=94, @players=[]>,
   95=><SnakesAndLadders::Portal:0x007f9e74a48e80 @destination=75, @location=95, @players=[]>,
   96=><SnakesAndLadders::Cell:0x007f9e74a48ca0 @location=96, @players=[]>,
   97=><SnakesAndLadders::Cell:0x007f9e74a48bb0 @location=97, @players=[]>,
   98=><SnakesAndLadders::Portal:0x007f9e74a48a98 @destination=78, @location=98, @players=[]>,
   99=><SnakesAndLadders::Cell:0x007f9e74a488e0 @location=99, @players=[]>,
  100=><SnakesAndLadders::Cell:0x007f9e74a48778 @location=100, @players=[]>}
```

```ruby
[snakes_and_ladders]$ irb
>> require_relative 'grid.rb'
=> true

>> tile_mappings = [{:class=>:Portal, :location=>1, :destination=>3},  {:class=>:Portal, :location=>4, :destination=>2}]
=> [{:class=>:Portal, :location=>1, :destination=>3}, {:class=>:Portal, :location=>4, :destination=>2}]

>> grid = SnakesAndLadders::Grid.new(size: 4, tile_mappings: tile_mappings, default_tile: :Cell)
=> #<SnakesAndLadders::Grid:0x007f8369a0aed0 @size=4, @tile_mappings=[{:class=>:Portal, :location=>1, :destination=>3}, {:class=>:Portal, :location=>4, :destination=>2}], @default_tile=:Cell>

>> grid.build_v2
=> {1=><SnakesAndLadders::Portal:0x007f8369a01bc8 @location=1, @destination=3>, 
    2=><SnakesAndLadders::Cell:0x007f8369a01a10 @location=2>, 
    3=><SnakesAndLadders::Cell:0x007f8369a01920 @location=3>, 
    4=><SnakesAndLadders::Portal:0x007f8369a01600 @location=4, @destination=2>}
```


```ruby
    def build_v2
      (1..size).each_with_object({}) { |index, grid| grid[index] = tile_at(index) }
    end

    private

# tile_mappings => [{:class=>:Portal, :location=>1, :destination=>3},  {:class=>:Portal, :location=>4, :destination=>2}]
      def tile_at(index) #=> 1, 2, 3, 4
        if mapping = tile_mappings.detect { |tile_map|                                         tile_map[:location].equal?(index) }
# 1.    if mapping = tile_mappings.detect { |{:class=>:Portal, :location=>1, :destination=>3}|                   1.equal?(    1) }
# 1.       mapping => {:class=>:Portal, :location=>1, :destination=>3}

# 4.    if mapping = tile_mappings.detect { |{:class=>:Portal, :location=>4, :destination=>2}|                   1.equal?(    4) }
# 4.       mapping => {:class=>:Portal, :location=>4, :destination=>2}

          klass = mapping.delete(:class)
# 1.      klass => :Portal
# 4.      klass => :Portal
          SnakesAndLadders.const_get(klass).new(mapping)
# 1.      SnakesAndLadders.const_get(:Portal).new({:location=>1, :destination=>3}) => #<SnakesAndLadders::Portal:0x007fb72404b9f0 @destination=3, @location=1>
# 4.      SnakesAndLadders.const_get(:Portal).new({:location=>4, :destination=>2}) => #<SnakesAndLadders::Portal:0x007fc5c53198a8 @destination=2, @location=4>
        else
          SnakesAndLadders.const_get(default_tile).new(location: index)
# 2.      SnakesAndLadders.const_get(       :Cell).new(location:     2)            #=> #<SnakesAndLadders::Cell:0x007fc5c52f0200 @location=2>
# 3.      SnakesAndLadders.const_get(       :Cell).new(location:     3)            #=> #<SnakesAndLadders::Cell:0x007fc5c41bf3c8 @location=3>
        end
      end

```
