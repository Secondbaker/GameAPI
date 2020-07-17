require "application_system_test_case"

class CompatibleConsolesTest < ApplicationSystemTestCase
  setup do
    @compatible_console = compatible_consoles(:one)
  end

  test "visiting the index" do
    visit compatible_consoles_url
    assert_selector "h1", text: "Compatible Consoles"
  end

  test "creating a Compatible console" do
    visit compatible_consoles_url
    click_on "New Compatible Console"

    fill_in "Name", with: @compatible_console.name
    click_on "Create Compatible console"

    assert_text "Compatible console was successfully created"
    click_on "Back"
  end

  test "updating a Compatible console" do
    visit compatible_consoles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @compatible_console.name
    click_on "Update Compatible console"

    assert_text "Compatible console was successfully updated"
    click_on "Back"
  end

  test "destroying a Compatible console" do
    visit compatible_consoles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compatible console was successfully destroyed"
  end
end
