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
        id: String | nil,
        address: WhopSDK::Internal::Type::Unknown | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        created_at: String | nil,
        date_of_birth: String | nil,
        first_name: String | nil,
        kind: WhopSDK::Models::VerificationCreateResponse::Kind | nil,
        last_name: String | nil,
        rfis: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationCreateResponse::Rfi]) | nil,
        session_url: String | nil,
        status: WhopSDK::Models::VerificationCreateResponse::Status | nil,
        updated_at: String | nil
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
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationRetrieveResponse::Data]) | nil
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
        id: String | nil,
        address: WhopSDK::Internal::Type::Unknown | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        created_at: String | nil,
        date_of_birth: String | nil,
        first_name: String | nil,
        kind: WhopSDK::Models::VerificationUpdateResponse::Kind | nil,
        last_name: String | nil,
        rfis: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationUpdateResponse::Rfi]) | nil,
        session_url: String | nil,
        status: WhopSDK::Models::VerificationUpdateResponse::Status | nil,
        updated_at: String | nil
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
        id: String | nil,
        address: WhopSDK::Internal::Type::Unknown | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        created_at: String | nil,
        date_of_birth: String | nil,
        first_name: String | nil,
        kind: WhopSDK::Models::VerificationDeleteResponse::Kind | nil,
        last_name: String | nil,
        rfis: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationDeleteResponse::Rfi]) | nil,
        session_url: String | nil,
        status: WhopSDK::Models::VerificationDeleteResponse::Status | nil,
        updated_at: String | nil
      }
    end
  end
end
