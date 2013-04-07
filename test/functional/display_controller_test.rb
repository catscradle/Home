require 'test_helper'

class DisplayControllerTest < ActionController::TestCase
  test "should get splash" do
    get :splash
    assert_response :success
  end

  test "should get normal" do
    get :normal
    assert_response :success
  end

  test "should get gameOver" do
    get :gameOver
    assert_response :success
  end

end
