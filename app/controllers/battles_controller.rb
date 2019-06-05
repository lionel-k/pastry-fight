# frozen_string_literal: true

class BattlesController < ApplicationController
  def index
    @battles = Battle.includes(:pastries)
    # @battles = Battle.all
  end

  def new
    @battle = Battle.new
    @next_monday = date_of_next('Monday')
  end

  def create
    battle = Battle.new(date: date_of_next('Monday'))
    battle.pastry_ids = params[:battle][:pastry_ids]
    battle.save!
    redirect_to root_path
  end

  private

  def battle_params
    params.require(:battle).permit(:pastry_ids)
  end

  def date_of_next(day)
    date = Date.parse(day)
    delta = date > Date.today ? 0 : 7
    date + delta
  end
end
