require 'test_helper'

class ExpertchatControllerTest < ActionDispatch::IntegrationTest
  test "should get show," do
    get expertchat_show,_url
    assert_response :success
  end

  test "should get create," do
    get expertchat_create,_url
    assert_response :success
  end

  test "should get destroy" do
    get expertchat_destroy_url
    assert_response :success
  end

end
