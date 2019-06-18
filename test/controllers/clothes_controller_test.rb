require 'test_helper'

class ClothesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get clothes_new_url
    assert_response :success
  end

end
