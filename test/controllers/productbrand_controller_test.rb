require 'test_helper'

class ProductbrandControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productbrand_index_url
    assert_response :success
  end

end
