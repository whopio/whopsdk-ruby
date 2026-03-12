# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PayoutAccountsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.payout_accounts.retrieve("poact_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::PayoutAccountRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        address: WhopSDK::Models::PayoutAccountRetrieveResponse::Address | nil,
        business_name: String | nil,
        business_representative: WhopSDK::Models::PayoutAccountRetrieveResponse::BusinessRepresentative | nil,
        email: String | nil,
        latest_verification: WhopSDK::Models::PayoutAccountRetrieveResponse::LatestVerification | nil,
        phone: String | nil,
        status: WhopSDK::PayoutAccountCalculatedStatuses | nil
      }
    end
  end
end
