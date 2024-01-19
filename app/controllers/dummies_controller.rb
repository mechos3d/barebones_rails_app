class DummiesController < ApplicationController
  def index
    count = Dummy.count

    render json: { dummies_count: count }
  end

  def new
    @dummy = Dummy.new
  end

  # curl -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' 'localhost:3000/dummies.json' --data '{ "dum_str_field_one": "foo_1", "dum_int_field_two": 777 }'

  def create
    dummy_params = params.permit!.to_h['dummy']

    Dummy.create!(dummy_params)
    flash[:success] = 'Done!'
    redirect_to new_dummy_url
  end
end
