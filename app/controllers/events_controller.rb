class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # On_ice sessions public route
  def on_ice
    @events = list_events
  end


  def list_events
    return Event.all
  end
  
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find_by(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @event = Event.find_by(params[:id])
  end

  # POST /events
  # POST /events.json
  def create

    @event = Event.new(event_params)
    
    respond_to do |format|
      if @event.save
        format.html { redirect_to events_url(@event), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: events_url(@event) }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:format])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:location, :info, :start, :end, :title, :capacity)
    end

end
