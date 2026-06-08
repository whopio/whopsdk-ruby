# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CardAccountTest < WhopSDK::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @whop.card_account.update(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::CardAccountAPI
    end

    assert_pattern do
      response => {
        auto_topup_enabled: WhopSDK::Internal::Type::Boolean,
        object: WhopSDK::CardAccountAPI::Object,
        auto_topup_target_usd: String | nil,
        auto_topup_threshold_usd: String | nil
      }
    end
  end
end
