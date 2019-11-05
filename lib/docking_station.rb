# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock_bike; end
end
