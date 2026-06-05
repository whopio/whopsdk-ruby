# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::VerificationsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.verifications.create(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Models::VerificationCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        kind: WhopSDK::Models::VerificationCreateResponse::Kind,
        session_url: String | nil,
        status: WhopSDK::Models::VerificationCreateResponse::Status,
        updated_at: String,
        address: WhopSDK::Internal::Type::Unknown | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        date_of_birth: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        rfis: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationCreateResponse::Rfi]) | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.verifications.retrieve("verification_id")

    assert_pattern do
      response => WhopSDK::Models::VerificationRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        kind: WhopSDK::Models::VerificationRetrieveResponse::Kind,
        rfis: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationRetrieveResponse::Rfi]),
        status: WhopSDK::Models::VerificationRetrieveResponse::Status,
        updated_at: String,
        address: WhopSDK::Internal::Type::Unknown | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        date_of_birth: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        session_url: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.verifications.update("verification_id")

    assert_pattern do
      response => WhopSDK::Models::VerificationUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        kind: WhopSDK::Models::VerificationUpdateResponse::Kind,
        rfis: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationUpdateResponse::Rfi]),
        status: WhopSDK::Models::VerificationUpdateResponse::Status,
        updated_at: String,
        address: WhopSDK::Internal::Type::Unknown | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        date_of_birth: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        session_url: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.verifications.list

    assert_pattern do
      response => WhopSDK::Models::VerificationListResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationListResponse::Data]),
        pagination: WhopSDK::Models::VerificationListResponse::Pagination
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.verifications.delete("verification_id")

    assert_pattern do
      response => WhopSDK::Models::VerificationDeleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        kind: WhopSDK::Models::VerificationDeleteResponse::Kind,
        rfis: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationDeleteResponse::Rfi]),
        status: WhopSDK::Models::VerificationDeleteResponse::Status,
        updated_at: String,
        address: WhopSDK::Internal::Type::Unknown | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        date_of_birth: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        session_url: String | nil
      }
    end
  end
end
