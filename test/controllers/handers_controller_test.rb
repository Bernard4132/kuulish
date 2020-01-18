require 'test_helper'

class HandersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hander = handers(:one)
  end

  test "should get index" do
    get handers_url
    assert_response :success
  end

  test "should get new" do
    get new_hander_url
    assert_response :success
  end

  test "should create hander" do
    assert_difference('Hander.count') do
      post handers_url, params: { hander: { name: @hander.name } }
    end

    assert_redirected_to hander_url(Hander.last)
  end

  test "should show hander" do
    get hander_url(@hander)
    assert_response :success
  end

  test "should get edit" do
    get edit_hander_url(@hander)
    assert_response :success
  end

  test "should update hander" do
    patch hander_url(@hander), params: { hander: { name: @hander.name } }
    assert_redirected_to hander_url(@hander)
  end

  test "should destroy hander" do
    assert_difference('Hander.count', -1) do
      delete hander_url(@hander)
    end

    assert_redirected_to handers_url
  end
end
