# frozen_string_literal: true

class DashboardsController < ApplicationController
  def cho
    @battle = Battle
              .includes(:pastries)
              .includes(:employees).last
  end

  # def cook
  #   @battle = Battle.new
  # end
end
