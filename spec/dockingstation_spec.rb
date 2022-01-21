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
    docking_station.dock(bike)
    expect(docking_station.bikes).to include(bike)
  end

  it "raise an error if we ask for a bike and there are none" do
    docking_station = DockingStation.new
    expect {docking_station.release_bike}.to raise_error("no bikes available")
  end
end


