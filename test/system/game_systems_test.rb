require "application_system_test_case"

class GameSystemsTest < ApplicationSystemTestCase
  setup do
    @game_system = game_systems(:one)
  end

  test "visiting the index" do
    visit game_systems_url
    assert_selector "h1", text: "Game Systems"
  end

  test "creating a Game system" do
    visit game_systems_url
    click_on "New Game System"

    fill_in "Name", with: @game_system.name
    click_on "Create Game system"

    assert_text "Game system was successfully created"
    click_on "Back"
  end

  test "updating a Game system" do
    visit game_systems_url
    click_on "Edit", match: :first

    fill_in "Name", with: @game_system.name
    click_on "Update Game system"

    assert_text "Game system was successfully updated"
    click_on "Back"
  end

  test "destroying a Game system" do
    visit game_systems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game system was successfully destroyed"
  end
end
