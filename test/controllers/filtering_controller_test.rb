require 'test_helper'

class FilteringControllerTest < ActionDispatch::IntegrationTest
  test "should get filter" do
    get filtering_filter_url
    assert_response :success
  end

end
