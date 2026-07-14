# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AudiencesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.audiences.create(account_id: "account_id", column_mapping: {}, file_id: "file_id", name: "name")

    assert_pattern do
      response => WhopSDK::Audience
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Float,
        error_message: String | nil,
        matched_rows: Float,
        name: String,
        platform_audience_ids: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        processed_rows: Float,
        progress_percent: Float,
        status: WhopSDK::Audience::Status,
        total_rows: Float,
        updated_at: Float
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.audiences.list(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Audience
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Float,
        error_message: String | nil,
        matched_rows: Float,
        name: String,
        platform_audience_ids: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        processed_rows: Float,
        progress_percent: Float,
        status: WhopSDK::Audience::Status,
        total_rows: Float,
        updated_at: Float
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.audiences.delete("audience_id")

    assert_pattern do
      response => WhopSDK::Models::AudienceDeleteResponse
    end

    assert_pattern do
      response => {
        success: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
