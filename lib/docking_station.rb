# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  attr_reader :bike
  def release_bike
    raise('No bikes available.') if bike.nil?

    bike
  end

  def dock_bike(bike)
    @bike = bike
  end
end
