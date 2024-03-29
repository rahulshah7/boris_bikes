# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  let(:bike) { Bike.new }

  describe '#release_bike' do
    it { expect(subject).to respond_to(:release_bike) }

    context 'When a bike is available' do
      it 'returns an instance of a Bike' do
        subject.dock_bike(bike)
        expect(subject.release_bike).to be_an_instance_of(Bike)
      end

      it 'returns a working bike' do
        subject.dock_bike(bike)
        bike = subject.release_bike
        expect(bike).to be_working
      end
    end

    context 'When no bikes are available' do
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

    context 'When a bike has already been docked' do
      it 'raises an error: "Bike has already been docked."' do
        subject.dock_bike(bike)
        expect { subject.dock_bike(bike) }.to raise_error(RuntimeError, 'Bike has already been docked.')
      end
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
