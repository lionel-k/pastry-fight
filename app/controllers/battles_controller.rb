# frozen_string_literal: true

class BattlesController < ApplicationController
  def index
    @battles = Battle.includes(:pastries)
  end

  def new
    @battle = Battle.new
    @next_monday = date_of_next('Monday')
  end

  def create
    battle = Battle.create!(date: date_of_next('Monday'))
    battle.pastry_ids = params[:battle][:pastry_ids]
    battle.save!
    redirect_to root_path
  end

  def edit
    @battle = battle
  end

  def update
    params[:battle][:competitions_attributes].each do |comp_params|
      Competition
        .find(comp_params.last[:id])
        .update(employee: Employee.find(comp_params.last[:employee_id]))
    end
    redirect_to root_path
  end

  private

  def battle
    Battle.find(params[:id])
  end

  def date_of_next(day)
    date = Date.parse(day)
    delta = date > Time.zone.today ? 0 : 7
    date + delta
  end
end
