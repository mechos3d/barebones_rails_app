require 'rails_helper'

RSpec.describe Dummy do
  it do
    aa = Dummy.create!

    aa.update(dum_str_field_one: 'fofo')

    expect(Dummy.count).to eq(1)
  end
end
