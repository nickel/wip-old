# frozen_string_literal: true

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Package accounts
  post   "login"  => "login#create"
  delete "logout" => "login#destroy"

  # Package landing
  root "welcome#index"
end
