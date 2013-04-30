require 'test_helper'

class DailySellingsControllerTest < ActionController::TestCase
  setup do
    @daily_selling = daily_sellings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_sellings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_selling" do
    assert_difference('DailySelling.count') do
      post :create, daily_selling: { price_per_quantity: @daily_selling.price_per_quantity, product_id: @daily_selling.product_id, quantity: @daily_selling.quantity, sold_to: @daily_selling.sold_to, total_amount: @daily_selling.total_amount }
    end

    assert_redirected_to daily_selling_path(assigns(:daily_selling))
  end

  test "should show daily_selling" do
    get :show, id: @daily_selling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_selling
    assert_response :success
  end

  test "should update daily_selling" do
    put :update, id: @daily_selling, daily_selling: { price_per_quantity: @daily_selling.price_per_quantity, product_id: @daily_selling.product_id, quantity: @daily_selling.quantity, sold_to: @daily_selling.sold_to, total_amount: @daily_selling.total_amount }
    assert_redirected_to daily_selling_path(assigns(:daily_selling))
  end

  test "should destroy daily_selling" do
    assert_difference('DailySelling.count', -1) do
      delete :destroy, id: @daily_selling
    end

    assert_redirected_to daily_sellings_path
  end
end
