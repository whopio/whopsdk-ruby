# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::FilesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.files.create(filename: "filename")

    assert_pattern do
      response => WhopSDK::Models::FileCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        content_type: String | nil,
        filename: String | nil,
        size: String | nil,
        upload_headers: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        upload_status: WhopSDK::UploadStatus,
        upload_url: String | nil,
        url: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.files.retrieve("file_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::FileRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        content_type: String | nil,
        filename: String | nil,
        size: String | nil,
        upload_status: WhopSDK::UploadStatus,
        url: String | nil
      }
    end
  end
end
