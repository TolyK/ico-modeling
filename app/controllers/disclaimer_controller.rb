class DisclaimerController < ApplicationController
  def index
    @icos = Ico.last(3).reverse
  end
end
