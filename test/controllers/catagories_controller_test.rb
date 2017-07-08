require 'test_helper'

class CatagoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catagory = catagories(:one)
  end

  test "should get index" do
    get catagories_url
    assert_response :success
  end

  test "should get new" do
    get new_catagory_url
    assert_response :success
  end

  test "should create catagory" do
    assert_difference('Catagory.count') do
      post catagories_url, params: { catagory: { title: @catagory.title } }
    end

    assert_redirected_to catagory_url(Catagory.last)
  end

  test "should show catagory" do
    get catagory_url(@catagory)
    assert_response :success
  end

  test "should get edit" do
    get edit_catagory_url(@catagory)
    assert_response :success
  end

  test "should update catagory" do
    patch catagory_url(@catagory), params: { catagory: { title: @catagory.title } }
    assert_redirected_to catagory_url(@catagory)
  end

  test "should destroy catagory" do
    assert_difference('Catagory.count', -1) do
      delete catagory_url(@catagory)
    end

    assert_redirected_to catagories_url
  end
end
