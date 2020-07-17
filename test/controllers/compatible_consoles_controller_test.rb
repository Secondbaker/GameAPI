require 'test_helper'

class CompatibleConsolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compatible_console = compatible_consoles(:one)
  end

  test "should get index" do
    get compatible_consoles_url
    assert_response :success
  end

  test "should get new" do
    get new_compatible_console_url
    assert_response :success
  end

  test "should create compatible_console" do
    assert_difference('CompatibleConsole.count') do
      post compatible_consoles_url, params: { compatible_console: { name: @compatible_console.name } }
    end

    assert_redirected_to compatible_console_url(CompatibleConsole.last)
  end

  test "should show compatible_console" do
    get compatible_console_url(@compatible_console)
    assert_response :success
  end

  test "should get edit" do
    get edit_compatible_console_url(@compatible_console)
    assert_response :success
  end

  test "should update compatible_console" do
    patch compatible_console_url(@compatible_console), params: { compatible_console: { name: @compatible_console.name } }
    assert_redirected_to compatible_console_url(@compatible_console)
  end

  test "should destroy compatible_console" do
    assert_difference('CompatibleConsole.count', -1) do
      delete compatible_console_url(@compatible_console)
    end

    assert_redirected_to compatible_consoles_url
  end
end
