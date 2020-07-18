require 'test_helper'

class GameSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_system = game_systems(:one)
  end

  test "should get index" do
    get game_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_game_system_url
    assert_response :success
  end

  test "should create game_system" do
    assert_difference('GameSystem.count') do
      post game_systems_url, params: { game_system: { name: @game_system.name } }
    end

    assert_redirected_to game_system_url(GameSystem.last)
  end

  test "should show game_system" do
    get game_system_url(@game_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_system_url(@game_system)
    assert_response :success
  end

  test "should update game_system" do
    patch game_system_url(@game_system), params: { game_system: { name: @game_system.name } }
    assert_redirected_to game_system_url(@game_system)
  end

  test "should destroy game_system" do
    assert_difference('GameSystem.count', -1) do
      delete game_system_url(@game_system)
    end

    assert_redirected_to game_systems_url
  end
end
