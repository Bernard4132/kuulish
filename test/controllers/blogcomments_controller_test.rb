require 'test_helper'

class BlogcommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogcomment = blogcomments(:one)
  end

  test "should get index" do
    get blogcomments_url
    assert_response :success
  end

  test "should get new" do
    get new_blogcomment_url
    assert_response :success
  end

  test "should create blogcomment" do
    assert_difference('Blogcomment.count') do
      post blogcomments_url, params: { blogcomment: { body: @blogcomment.body, bolg_id: @blogcomment.bolg_id } }
    end

    assert_redirected_to blogcomment_url(Blogcomment.last)
  end

  test "should show blogcomment" do
    get blogcomment_url(@blogcomment)
    assert_response :success
  end

  test "should get edit" do
    get edit_blogcomment_url(@blogcomment)
    assert_response :success
  end

  test "should update blogcomment" do
    patch blogcomment_url(@blogcomment), params: { blogcomment: { body: @blogcomment.body, bolg_id: @blogcomment.bolg_id } }
    assert_redirected_to blogcomment_url(@blogcomment)
  end

  test "should destroy blogcomment" do
    assert_difference('Blogcomment.count', -1) do
      delete blogcomment_url(@blogcomment)
    end

    assert_redirected_to blogcomments_url
  end
end
