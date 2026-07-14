# frozen_string_literal: true

require_relative "../../test_helper"

class WhopSDK::Test::Resources::Accounts::PreferencesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.accounts.preferences.retrieve("account_id")

    assert_pattern do
      response => WhopSDK::Models::Accounts::PreferenceRetrieveResponse
    end

    assert_pattern do
      response => {
        ads_payment_methods: WhopSDK::Models::Accounts::PreferenceRetrieveResponse::AdsPaymentMethods | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.accounts.preferences.update("account_id")

    assert_pattern do
      response => WhopSDK::Models::Accounts::PreferenceUpdateResponse
    end

    assert_pattern do
      response => {
        ads_payment_methods: WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods | nil
      }
    end
  end
end
