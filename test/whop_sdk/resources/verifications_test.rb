# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::VerificationsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.verifications.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::VerificationRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        address: WhopSDK::Models::VerificationRetrieveResponse::Address | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        created_at: String | nil,
        date_of_birth: String | nil,
        email: String | nil,
        first_name: String | nil,
        kind: WhopSDK::Models::VerificationRetrieveResponse::Kind | nil,
        last_name: String | nil,
        phone: String | nil,
        requested_information: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationRetrieveResponse::RequestedInformation]) | nil,
        required_documents: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationRetrieveResponse::RequiredDocument]) | nil,
        session_url: String | nil,
        status: WhopSDK::Models::VerificationRetrieveResponse::Status | nil,
        updated_at: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.verifications.list(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Models::VerificationListResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::VerificationListResponse::Data]) | nil
      }
    end
  end
end
