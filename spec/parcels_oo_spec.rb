require 'rspec'
require 'parcels_oo'

describe Parcel do
  it 'is initialized with a height, width, and length' do
    test_parcel = Parcel.new(5, 5, 5)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'calculates the volume based on inputted height, width, and length' do
    test_parcel = Parcel.new(5, 5, 5)
    test_parcel.volume.should eq 125
  end

  it 'calculates shipping cost based on volume of package' do
    test_parcel = Parcel.new(5, 5, 5)
    test_parcel.cost_to_ship.should eq 3.13
  end

end
