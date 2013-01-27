class MatomesController < ApplicationController
  def index
    @matomes = Matome.find
    @chumokus = Chumoku.find
  end
end
