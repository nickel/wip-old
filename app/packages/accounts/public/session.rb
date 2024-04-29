# frozen_string_literal: true

module Accounts
  module Session
    module_function

    def logged_in?(session)
      !!session[:auth]
    end
  end
end
