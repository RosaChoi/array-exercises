require 'spec_helper'

describe "Tic Tac Toe, in arrays" do
  let(:___) { nil }

  let(:data) {
    [
      ['X', 'O', 'O'],
      ['X', 'X', 'O'],
      ['O', 'X', 'O']
    ]
  }

  describe "counting usage per row" do
    it "returns how many times X was played in each row" do
      xs_per_row = data.map { |i| i.count("X")}
      expect(xs_per_row).to be == [1, 2, 1]
    end

    it "returns how many times O was played in each row" do
      os_per_row = data.map { |i| i.count("O")}
      expect(os_per_row).to be == [2, 1, 2]
    end
  end

  describe "getting coordinates of usage" do
    it "returns an array of [row, column] array coordinates for each usage of X" do
      x_coordinates = ___
      expect(x_coordinates).to be == [[0, 0], [1, 0], [1, 1], [2, 1]]
    end

    xit "returns an array of [row, column] array coordinates for each usage of O" do
      x_coordinates = ___
      expect(x_coordinates).to be == [[0, 1], [0, 2], [1, 2], [2, 0], [2, 2]]
    end
  end

  describe "testing who won" do
    xit "determines whether X or O won" do
      winner = ___
      expect(winner).to be == 'O'
    end
  end
end
