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

      it "builds a grid from mappings" do
        grid = Grid.new(size: 4, tile_mappings: tile_mappings).build

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

      it "ruturns a Hash object" do
        mappings = [{:class=>:Portal, :location=>1, :destination=>3}, {:class=>:Portal, :location=>4, :destination=>2}]

        grid = Grid.new(size: 100, tile_mappings: mappings, default_tile: :Cell) 

        expect(grid.build).to be_a Hash
      end
    end
  end
end
