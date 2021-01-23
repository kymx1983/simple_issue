require 'test_helper'

class IssueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get issue_index_url
    assert_response :success
  end

  test "should get show" do
    get issue_show_url
    assert_response :success
  end

  test "should get new" do
    get issue_new_url
    assert_response :success
  end

end
