class ScheduleController < ApplicationController
  def new
  end

  def create
    @schedule = Schedule.new
  end
end
