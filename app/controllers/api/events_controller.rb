class Api::EventsController < ApplicationController
  respond_to :json

  def index
    respond_with Event.order(start_at: :DESC)
  end

  def show
    respond_with Event.find(params[:id])
  end

  def create
    respond_with :api, Event.create(event_params)
  end

  def destroy
    respond_with Event.destroy(params[:id])
  end

  def update
    event = Event.find(params['id'])
    event.update(event_params)
    respond_with Event, json: event
  end

  private

  def event_params
    params.require(:event).permit(
      :id,
      :kind,
      :title,
      :start_at,
      :finish_at
    )
  end
end

