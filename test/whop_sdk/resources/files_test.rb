# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::FilesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.files.create(filename: "terms.pdf")

    assert_pattern do
      response => WhopSDK::Models::FileCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        content_type: String | nil,
        created_at: String,
        filename: String | nil,
        object: String,
        size: Integer | nil,
        upload_status: WhopSDK::Models::FileCreateResponse::UploadStatus,
        url: String | nil,
        visibility: WhopSDK::Models::FileCreateResponse::Visibility,
        multipart_chunk_size: Integer | nil,
        multipart_upload_id: String | nil,
        multipart_upload_urls: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::FileCreateResponse::MultipartUploadURL]) | nil,
        upload_headers: WhopSDK::Internal::Type::Unknown | nil,
        upload_url: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.files.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::FileRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        content_type: String | nil,
        created_at: String,
        filename: String | nil,
        object: String,
        size: Integer | nil,
        upload_status: WhopSDK::Models::FileRetrieveResponse::UploadStatus,
        url: String | nil,
        visibility: WhopSDK::Models::FileRetrieveResponse::Visibility,
        multipart_chunk_size: Integer | nil,
        multipart_upload_id: String | nil,
        multipart_upload_urls: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::FileRetrieveResponse::MultipartUploadURL]) | nil,
        upload_headers: WhopSDK::Internal::Type::Unknown | nil,
        upload_url: String | nil
      }
    end
  end
end
