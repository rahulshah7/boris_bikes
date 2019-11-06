# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  let(:bike) { Bike.new }

  describe '#release_bike' do
    it { expect(subject).to respond_to(:release_bike) }
    it 'returns an instance of a Bike if one is available' do
      subject.dock_bike(bike)
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    let(:bike) { subject.release_bike }
    it 'returns a working bike' do
      expect(bike).to be_working
    end
  end

    context 'When no bikes are available' do
      subject { described_class.new }
      it 'raises an error: "No bikes available."' do
        expect { subject.release_bike }.to raise_error(RuntimeError, 'No bikes available.')
      end
    end
  end

  describe '#dock_bike' do
    it { expect(subject).to respond_to(:dock_bike).with(1).argument }

    it 'docks a bike and returns it' do
      expect(subject.dock_bike(bike)).to be(bike)
    end
  end

  describe '#bike' do
    it { expect(subject).to respond_to(:bike) }

    it 'returns a docked bike' do
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end
  end
end
