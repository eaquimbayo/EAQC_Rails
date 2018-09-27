class PruebaController < ApplicationController
  def index
    @variable = "desde controller - index"
    render ("hola")
  end
  def hola
    @variable = "desde controller - hola"
    render("index")
    end
end
