require "test_helper"

class RichTextAttachmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get rich_text_attachments_create_url
    assert_response :success
  end
end
