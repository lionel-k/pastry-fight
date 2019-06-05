# frozen_string_literal: true

Rails.application.routes.draw do
  get 'chief-happiness-officer', to: 'dashboards#cho', as: :cho
  get 'cook-linguini', to: 'dashboards#cook', as: :cook
  resources :battles, only: [:new, :create]

  root to: "battles#index"
end
