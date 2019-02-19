require 'test_helper'

class AriclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aricle = aricles(:one)
  end

  test "should get index" do
    get aricles_url
    assert_response :success
  end

  test "should get new" do
    get new_aricle_url
    assert_response :success
  end

  test "should create aricle" do
    assert_difference('Aricle.count') do
      post aricles_url, params: { aricle: { description: @aricle.description, title: @aricle.title } }
    end

    assert_redirected_to aricle_url(Aricle.last)
  end

  test "should show aricle" do
    get aricle_url(@aricle)
    assert_response :success
  end

  test "should get edit" do
    get edit_aricle_url(@aricle)
    assert_response :success
  end

  test "should update aricle" do
    patch aricle_url(@aricle), params: { aricle: { description: @aricle.description, title: @aricle.title } }
    assert_redirected_to aricle_url(@aricle)
  end

  test "should destroy aricle" do
    assert_difference('Aricle.count', -1) do
      delete aricle_url(@aricle)
    end

    assert_redirected_to aricles_url
  end
end
