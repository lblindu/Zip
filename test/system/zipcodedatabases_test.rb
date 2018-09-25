require "application_system_test_case"

class ZipcodedatabasesTest < ApplicationSystemTestCase
  setup do
    @zipcodedatabase = zipcodedatabases(:one)
  end

  test "visiting the index" do
    visit zipcodedatabases_url
    assert_selector "h1", text: "Zipcodedatabases"
  end

  test "creating a Zipcodedatabase" do
    visit zipcodedatabases_url
    click_on "New Zipcodedatabase"

    fill_in "City", with: @zipcodedatabase.City
    fill_in "Stateabb", with: @zipcodedatabase.StateAbb
    fill_in "County", with: @zipcodedatabase.county
    fill_in "State", with: @zipcodedatabase.state
    fill_in "Zip", with: @zipcodedatabase.zip
    click_on "Create Zipcodedatabase"

    assert_text "Zipcodedatabase was successfully created"
    click_on "Back"
  end

  test "updating a Zipcodedatabase" do
    visit zipcodedatabases_url
    click_on "Edit", match: :first

    fill_in "City", with: @zipcodedatabase.City
    fill_in "Stateabb", with: @zipcodedatabase.StateAbb
    fill_in "County", with: @zipcodedatabase.county
    fill_in "State", with: @zipcodedatabase.state
    fill_in "Zip", with: @zipcodedatabase.zip
    click_on "Update Zipcodedatabase"

    assert_text "Zipcodedatabase was successfully updated"
    click_on "Back"
  end

  test "destroying a Zipcodedatabase" do
    visit zipcodedatabases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zipcodedatabase was successfully destroyed"
  end
end
