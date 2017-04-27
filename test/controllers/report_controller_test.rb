require 'test_helper'

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get daily" do
    get report_daily_url
    assert_response :success
  end

  test "should get weekly" do
    get report_weekly_url
    assert_response :success
  end

  test "should get monthly" do
    get report_monthly_url
    assert_response :success
  end

  test "should get topselling" do
    get report_topselling_url
    assert_response :success
  end

end
