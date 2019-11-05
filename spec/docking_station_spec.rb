# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it { expect(subject).to respond_to(:release_bike) }
    it 'returns an instance of a Bike' do
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    let(:bike) { subject.release_bike }
    it 'returns a working bike' do
      expect(bike).to be_working
    end
  end

  describe '#dock_bike' do
    it { expect(subject).to respond_to(:dock_bike).with(1).argument }

    let(:bike) { Bike.new }
    it 'docks a bike' do
      expect(subject.dock_bike(bike)).to eq(bike)
    end
  end

  describe '#bike' do
    it { expect(subject).to respond_to(:bike) }
  end
end
