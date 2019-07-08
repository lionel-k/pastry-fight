# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BattlesController, type: :controller do
  context '#index' do
    it 'renders all battles' do
      5.times do
        Battle.create(date: Time.zone.today)
      end

      get :index
      expect(response).to render_template :index
    end
  end
end
