class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new
    @episode = @episode.find_by(params[:date])
    @appearance[:episode_id] = @episode.id
    @guest = @guest.find_by(params[:name])
    @appearance[:guest_id] = @guest.id
    @appearance.save
  end

end
