require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voter" do
    assert_difference('Voter.count') do
      post :create, :voter => { }
    end

    assert_redirected_to voter_path(assigns(:voter))
  end

  test "should show voter" do
    get :show, :id => voters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => voters(:one).to_param
    assert_response :success
  end

  test "should update voter" do
    put :update, :id => voters(:one).to_param, :voter => { }
    assert_redirected_to voter_path(assigns(:voter))
  end

  test "should destroy voter" do
    assert_difference('Voter.count', -1) do
      delete :destroy, :id => voters(:one).to_param
    end

    assert_redirected_to voters_path
  end
end
