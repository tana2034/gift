# frozen_string_literal: true

require "test_helper"

class UserHelperTest < ActionView::TestCase
  test "valid signup information" do
    get signup_path
    assert_difference "User.count", 1 do
      post users_path, params: { user: { name:  "Example User",
                                          email: "user@example.com",
                                          password:              "password",
                                          password_confirmation: "password" } }
    end
    follow_redirect!
    assert_not flash.error
  end
end
