require 'dockingstation'

describe DockingStation do
  docking_station = DockingStation.new

  it 'responds to release_bike' do
    expect(docking_station).to respond_to :release_bike
  end 

it 'releases working bike' do
  expect(docking_station.release_bike).to be_working
  end

  it 'respond to dock with bike' do
    bike = Bike.new
  expect(docking_station.dock(bike)).to eq(bike)
  end

end