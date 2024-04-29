# frozen_string_literal: true

require "test_helper"

module Landings
  class LandingFlowTest < ActionDispatch::IntegrationTest
    test "can render the welcome page" do
      get "/"

      assert_select "h1", "Juan Gallego IV"
    end
  end
end
