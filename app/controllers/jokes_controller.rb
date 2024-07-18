class JokesController < ApplicationController
  def index
    @facade = JokeFacade.gen_joke
  end
end