# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DashboardsController, type: :controller do
  describe 'GET #cho' do
    it 'returns http success' do
      get :cho
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #cook' do
    it 'returns http success' do
      get :cook
      expect(response).to have_http_status(:success)
    end
  end
end
