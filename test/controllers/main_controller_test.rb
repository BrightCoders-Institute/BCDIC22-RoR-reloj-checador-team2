require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get cheking_employee" do
    get main_cheking_employee_url
    assert_response :success
  end

  test "should get register_employee" do
    get main_register_employee_url
    assert_response :success
  end

  test "should get register_store" do
    get main_register_store_url
    assert_response :success
  end
end
