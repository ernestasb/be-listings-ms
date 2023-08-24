require "test_helper"

class HealthControllerTest < ActionDispatch::IntegrationTest

  test "health ok" do
    get health_url
    assert_response :success
  end

end
