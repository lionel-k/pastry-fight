# frozen_string_literal: true

Rails.application.routes.draw do
  resources :battles, only: [:new, :create, :edit, :update]
  root to: "battles#index"
end
