require 'test_helper'

class Bits1sControllerTest < ActionController::TestCase
  setup do
    @bits_1 = bits_1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bits_1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bits_1" do
    assert_difference('Bits1.count') do
      post :create, bits_1: { bit_cost: @bits_1.bit_cost, comment: @bits_1.comment, user_id: @bits_1.user_id }
    end

    assert_redirected_to bits_1_path(assigns(:bits_1))
  end

  test "should show bits_1" do
    get :show, id: @bits_1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bits_1
    assert_response :success
  end

  test "should update bits_1" do
    patch :update, id: @bits_1, bits_1: { bit_cost: @bits_1.bit_cost, comment: @bits_1.comment, user_id: @bits_1.user_id }
    assert_redirected_to bits_1_path(assigns(:bits_1))
  end

  test "should destroy bits_1" do
    assert_difference('Bits1.count', -1) do
      delete :destroy, id: @bits_1
    end

    assert_redirected_to bits_1s_path
  end
end
