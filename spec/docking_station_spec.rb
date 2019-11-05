# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  it { expect(subject).to respond_to(:release_bike) }

  describe '#release_bike' do
    it 'returns an instance of a Bike' do
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    it 'returns a working bike' do
      expect(subject.release_bike).to be_working
    end
  end
end
