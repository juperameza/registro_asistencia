require "test_helper"

class AssistancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assistance = assistances(:one)
  end

  test "should get index" do
    get assistances_url
    assert_response :success
  end

  test "should get new" do
    get new_assistance_url
    assert_response :success
  end

  test "should create assistance" do
    assert_difference("Assistance.count") do
      post assistances_url, params: { assistance: { account: @assistance.account, dad_last: @assistance.dad_last, grade: @assistance.grade, group: @assistance.group, mother_last: @assistance.mother_last, name: @assistance.name } }
    end

    assert_redirected_to assistance_url(Assistance.last)
  end

  test "should show assistance" do
    get assistance_url(@assistance)
    assert_response :success
  end

  test "should get edit" do
    get edit_assistance_url(@assistance)
    assert_response :success
  end

  test "should update assistance" do
    patch assistance_url(@assistance), params: { assistance: { account: @assistance.account, dad_last: @assistance.dad_last, grade: @assistance.grade, group: @assistance.group, mother_last: @assistance.mother_last, name: @assistance.name } }
    assert_redirected_to assistance_url(@assistance)
  end

  test "should destroy assistance" do
    assert_difference("Assistance.count", -1) do
      delete assistance_url(@assistance)
    end

    assert_redirected_to assistances_url
  end
end
