require 'dockingstation'

describe DockingStation do

  it 'can release the bike' do
  
  docking_station = DockingStation.new
  expect(docking_station.release_bike).to eq("bike released")
  end
end