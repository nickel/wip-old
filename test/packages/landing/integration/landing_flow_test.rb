# frozen_string_literal: true

require "test_helper"

class LandingFlowTest < ActionDispatch::IntegrationTest
  test "can render the welcome page" do
    get "/"

    assert_select "h1", "Juan Gallego IV"
  end
end
