require './lib/snakes_and_ladders/grid' 

module SnakesAndLadders
  describe Grid do
    context "#build" do
      let :tile_mappings do
        [
          { class: :Portal, location: 1, destination: 3 },
          { class: :Portal, location: 4, destination: 2 },
        ]
      end

      it "VERSION 1 ruturns a Hash object" do
        tile_mappings = [{:class=>:Portal, :location=>1, :destination=>3},  {:class=>:Portal, :location=>4, :destination=>2}]

        grid = Grid.new(size: 100, tile_mappings: tile_mappings, default_tile: :Cell) 
        grid_built = grid.build_v1

        expect(grid_built).to be_a Hash
      end

      it "VERSION 1 builds a grid from tile_mappings" do
        grid = Grid.new(size: 4, tile_mappings: tile_mappings).build_v1

        expect(grid[1]).to be_a Portal
        expect(grid[2]).to be_a Cell
        expect(grid[3]).to be_a Cell
        expect(grid[4]).to be_a Portal

        expect(grid[1].location).to eq 1
        expect(grid[2].location).to eq 2
        expect(grid[3].location).to eq 3
        expect(grid[4].location).to eq 4

        expect(grid[1].destination).to eq 3
        expect(grid[4].destination).to eq 2
      end

      it "VERSION 2 ruturns a Hash object" do
        tile_mappings = [{:class=>:Portal, :location=>1, :destination=>3},  {:class=>:Portal, :location=>4, :destination=>2}]

        grid = Grid.new(size: 100, tile_mappings: tile_mappings, default_tile: :Cell) 
        grid_built = grid.build_v2

        expect(grid_built).to be_a Hash
      end

      it "VERSION 2 builds a grid from tile_mappings" do
        grid = Grid.new(size: 4, tile_mappings: tile_mappings).build_v2

        expect(grid[1]).to be_a Portal
        expect(grid[2]).to be_a Cell
        expect(grid[3]).to be_a Cell
        expect(grid[4]).to be_a Portal

        expect(grid[1].location).to eq 1
        expect(grid[2].location).to eq 2
        expect(grid[3].location).to eq 3
        expect(grid[4].location).to eq 4

        expect(grid[1].destination).to eq 3
        expect(grid[4].destination).to eq 2
      end

    end
  end
end

# >> SnakesAndLadders::Grid.new(size: 100, tile_mappings: mappings, default_tile: :Cell).build
# => {1=> SnakesAndLadders::Portal0x0 @destination=3, @location=1, @players=[]>, 
#    {2=> SnakesAndLadders::Cell                      @location=2, @players=[]>, 
#     3=> SnakesAndLadders::Cell                      @location=3, @players=[]>, 
#     4=> SnakesAndLadders::Portal0x0 @destination=2, @location=4, @players=[]>}
