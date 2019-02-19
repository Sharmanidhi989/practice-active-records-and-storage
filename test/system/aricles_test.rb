require "application_system_test_case"

class AriclesTest < ApplicationSystemTestCase
  setup do
    @aricle = aricles(:one)
  end

  test "visiting the index" do
    visit aricles_url
    assert_selector "h1", text: "Aricles"
  end

  test "creating a Aricle" do
    visit aricles_url
    click_on "New Aricle"

    fill_in "Description", with: @aricle.description
    fill_in "Title", with: @aricle.title
    click_on "Create Aricle"

    assert_text "Aricle was successfully created"
    click_on "Back"
  end

  test "updating a Aricle" do
    visit aricles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @aricle.description
    fill_in "Title", with: @aricle.title
    click_on "Update Aricle"

    assert_text "Aricle was successfully updated"
    click_on "Back"
  end

  test "destroying a Aricle" do
    visit aricles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aricle was successfully destroyed"
  end
end
