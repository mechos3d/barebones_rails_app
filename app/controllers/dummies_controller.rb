class DummiesController < ApplicationController
  def index
    render json: { foo: 'bar' }
  end

  def new
    @dummy = Dummy.new
  end

  def create
    puts params
    flash[:success] = 'Done!'
    redirect_to new_dummy_url
  end

  # def some_method
  #   render json: { some: 'method' }
  # end
end
