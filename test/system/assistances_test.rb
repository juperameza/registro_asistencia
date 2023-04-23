require "application_system_test_case"

class AssistancesTest < ApplicationSystemTestCase
  setup do
    @assistance = assistances(:one)
  end

  test "visiting the index" do
    visit assistances_url
    assert_selector "h1", text: "Assistances"
  end

  test "should create assistance" do
    visit assistances_url
    click_on "New assistance"

    fill_in "Account", with: @assistance.account
    fill_in "Dad last", with: @assistance.dad_last
    fill_in "Grade", with: @assistance.grade
    fill_in "Group", with: @assistance.group
    fill_in "Mother last", with: @assistance.mother_last
    fill_in "Name", with: @assistance.name
    click_on "Create Assistance"

    assert_text "Assistance was successfully created"
    click_on "Back"
  end

  test "should update Assistance" do
    visit assistance_url(@assistance)
    click_on "Edit this assistance", match: :first

    fill_in "Account", with: @assistance.account
    fill_in "Dad last", with: @assistance.dad_last
    fill_in "Grade", with: @assistance.grade
    fill_in "Group", with: @assistance.group
    fill_in "Mother last", with: @assistance.mother_last
    fill_in "Name", with: @assistance.name
    click_on "Update Assistance"

    assert_text "Assistance was successfully updated"
    click_on "Back"
  end

  test "should destroy Assistance" do
    visit assistance_url(@assistance)
    click_on "Destroy this assistance", match: :first

    assert_text "Assistance was successfully destroyed"
  end
end
