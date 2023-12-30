require "test_helper"

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get email_me" do
    get messages_email_me_url
    assert_response :success
  end
end
