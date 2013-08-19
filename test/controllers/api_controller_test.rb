require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get chart" do
    get :chart
    assert_response :success
  end

end
