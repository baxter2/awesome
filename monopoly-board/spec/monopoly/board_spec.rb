require './lib/monopoly/board' 

module Monopoly
  describe Board do
    context "#build" do
      let :tile_mappings do
        [
          {class: :Tile,     name: "Go",                   buyable: false},
          {class: :Property, name: "Old Kent Road",        buyable: true, price: 60},
          {class: :Tile,     name: "Community Chest",      buyable: false},
          {class: :Property, name: "Whitechapel Road",     buyable: true, price: 60},
          {class: :Station,  name: "King's Cross Station", buyable: true, price: 200}
        ]
      end

      it "VERSION 1 ruturns a Hash object" do
        board = Board.new(tile_mappings: tile_mappings) 

        board_built = board.build_v1

        expect(board_built).to be_a Hash
      end

      it "VERSION 2 builds a grid from tile_mappings" do
        board = Board.new(tile_mappings: tile_mappings) 

        board_built = board.build_v1

        expect(board_built[0]).to be_a Tile 
        expect(board_built[1]).to be_a Property 
        expect(board_built[2]).to be_a Tile 
        expect(board_built[3]).to be_a Property 
        expect(board_built[4]).to be_a Station 

        expect(board_built[0].name).to eq "Go"
        expect(board_built[1].name).to eq "Old Kent Road"
        expect(board_built[2].name).to eq "Community Chest"
        expect(board_built[3].name).to eq "Whitechapel Road"
        expect(board_built[4].name).to eq "King's Cross Station"

        expect(board_built[0].buyable).to be false 
        expect(board_built[1].buyable).to be true 
        expect(board_built[2].buyable).to be false 
        expect(board_built[3].buyable).to be true 
        expect(board_built[4].buyable).to be true 

#        expect(board_built[0].price).to be_nil
        expect(board_built[1].price).to eq 60 
#        expect(board_built[2].price).to be_nil
        expect(board_built[3].price).to eq 60 
        expect(board_built[4].price).to eq 200 
      end

      it "VERSION 2 ruturns a Hash object" do
        board = Board.new(tile_mappings: tile_mappings) 

        board_built = board.build_v2

        expect(board_built).to be_a Hash
      end

      it "VERSION 2 builds a grid from tile_mappings" do
        board = Board.new(tile_mappings: tile_mappings) 

        board_built = board.build_v2

        expect(board_built[0]).to be_a Tile 
        expect(board_built[1]).to be_a Property 
        expect(board_built[2]).to be_a Tile 
        expect(board_built[3]).to be_a Property 
        expect(board_built[4]).to be_a Station 

        expect(board_built[0].name).to eq "Go"
        expect(board_built[1].name).to eq "Old Kent Road"
        expect(board_built[2].name).to eq "Community Chest"
        expect(board_built[3].name).to eq "Whitechapel Road"
        expect(board_built[4].name).to eq "King's Cross Station"

        expect(board_built[0].buyable).to be false 
        expect(board_built[1].buyable).to be true 
        expect(board_built[2].buyable).to be false 
        expect(board_built[3].buyable).to be true 
        expect(board_built[4].buyable).to be true 

#        expect(board_built[0].price).to be_nil
        expect(board_built[1].price).to eq 60 
#        expect(board_built[2].price).to be_nil
        expect(board_built[3].price).to eq 60 
        expect(board_built[4].price).to eq 200 
      end

    end
  end
end
