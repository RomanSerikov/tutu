class SearchesController < ApplicationController
  before_action :set_stations, only: [:create]

  def show; end

  def new
    @stations = RailwayStation.all
  end

  def create
    @results = Search.find_trains(@start, @finish)

    if @results.present?
      render :show
    else
      redirect_to new_search_url, notice: 'Sorry. No trains for such route'
    end
  end

  private

  def set_stations
    @start  = RailwayStation.find(params[:start_station]) unless params[:start_station].empty?
    @finish = RailwayStation.find(params[:finish_station]) unless params[:finish_station].empty?
  end
end
