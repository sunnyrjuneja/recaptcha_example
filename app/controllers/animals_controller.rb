class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def create
    if verify_recaptcha
      render 'show'
    else
      @animal = Animal.new
      render 'new'
    end
  end
end
