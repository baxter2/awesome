```ruby
>> require_relative 'board.rb'
=> true

>> tile_mappings = [{class: :Tile, name: "Go", buyable: false}, {class: :Property, name: "Old Kent Road", buyable: true, price: 60}, {class: :Tile, name: "Community Chest",  buyable: false}, {class: :Property, name: "Whitechapel Road", buyable: true, price: 60}, {class: :Station,  name: "King's Cross Station", buyable: true, price: 200}]
=> [{:class=>:Tile, :name=>"Go", :buyable=>false}, {:class=>:Property, :name=>"Old Kent Road", :buyable=>true, :price=>60}, {:class=>:Tile, :name=>"Community Chest", :buyable=>false}, {:class=>:Property, :name=>"Whitechapel Road", :buyable=>true, :price=>60}, {:class=>:Station, :name=>"King's Cross Station", :buyable=>true, :price=>200}]

>> board = Monopoly::Board.new(tile_mappings: tile_mappings)
=> <Monopoly::Board:0x007ff34a10c850 
      @tile_mappings=[{:class=>:Tile,     :name=>"Go",                   :buyable=>false}, 
                      {:class=>:Property, :name=>"Old Kent Road",        :buyable=>true, :price=>60}, 
                      {:class=>:Tile,     :name=>"Community Chest",      :buyable=>false}, 
                      {:class=>:Property, :name=>"Whitechapel Road",      :buyable=>true, :price=>60}, 
                      {:class=>:Station,  :name=>"King's Cross Station", :buyable=>true, :price=>200}]>

>> board.build_v2
=> {0=><Monopoly::Tile:0x007ff34a107328    @name="Go",                    @buyable=false>, 
    1=><Monopoly::Property:0x007ff34a1072d8 @name="Old Kent Road",        @buyable=true,   @price=60>, 
    2=><Monopoly::Tile:0x007ff34a107288     @name="Community Chest",      @buyable=false>, 
    3=><Monopoly::Property:0x007ff34a107238 @name="Whitechapel Road",     @buyable=true,   @price=60>, 
    4=><Monopoly::Station:0x007ff34a1071e8  @name="King's Cross Station", @buyable=true,   @price=200>}
```
