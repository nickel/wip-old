# frozen_string_literal: true

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  post   "login"  => "accounts/session#create"
  delete "logout" => "accounts/session#destroy"

  root "landing/welcome#index"
end
