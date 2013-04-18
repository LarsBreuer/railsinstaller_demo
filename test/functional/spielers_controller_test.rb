require 'test_helper'

class SpielersControllerTest < ActionController::TestCase
  setup do
    @spieler = spielers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spielers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spieler" do
    assert_difference('Spieler.count') do
      post :create, spieler: @spieler.attributes
    end

    assert_redirected_to spieler_path(assigns(:spieler))
  end

  test "should show spieler" do
    get :show, id: @spieler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spieler
    assert_response :success
  end

  test "should update spieler" do
    put :update, id: @spieler, spieler: @spieler.attributes
    assert_redirected_to spieler_path(assigns(:spieler))
  end

  test "should destroy spieler" do
    assert_difference('Spieler.count', -1) do
      delete :destroy, id: @spieler
    end

    assert_redirected_to spielers_path
  end
end
