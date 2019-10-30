# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  it 'responds hello to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end
end
