require 'test_helper'

class MafiasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mafias_index_url
    assert_response :success
  end

end
