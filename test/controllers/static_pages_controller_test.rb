# frozen_string_literal: true

require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Gift"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Gift"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Gift"
  end
end
