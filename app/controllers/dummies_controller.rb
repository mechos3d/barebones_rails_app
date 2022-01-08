class DummiesController < ApplicationController
  def new
    @dummy = Dummy.new
  end

  def create
    puts params
    flash[:success] = 'Done!'
    redirect_to new_dummy_url
  end
end
