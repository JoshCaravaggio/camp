class EventsController < ApplicationController
  def on_ice
    @events = list_events
  end

  def list_events
    return Event.all
  end
end
