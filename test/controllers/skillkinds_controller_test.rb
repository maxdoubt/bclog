require 'test_helper'

class SkillkindsControllerTest < ActionController::TestCase
  setup do
    @skillkind = skillkinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skillkinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skillkind" do
    assert_difference('Skillkind.count') do
      post :create, skillkind: { name: @skillkind.name }
    end

    assert_redirected_to skillkind_path(assigns(:skillkind))
  end

  test "should show skillkind" do
    get :show, id: @skillkind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skillkind
    assert_response :success
  end

  test "should update skillkind" do
    patch :update, id: @skillkind, skillkind: { name: @skillkind.name }
    assert_redirected_to skillkind_path(assigns(:skillkind))
  end

  test "should destroy skillkind" do
    assert_difference('Skillkind.count', -1) do
      delete :destroy, id: @skillkind
    end

    assert_redirected_to skillkinds_path
  end
end
