# frozen_string_literal: true

class DashboardsController < ApplicationController
  def cho; end

  def cook
    @battle = Battle.new
  end
end
