# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::WalletsTest < WhopSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @whop.wallets.list

    assert_pattern do
      response => WhopSDK::Models::WalletListResponse
    end

    assert_pattern do
      response => {
        wallets: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::WalletListResponse::Wallet])
      }
    end
  end

  def test_balance
    skip("Mock server tests are disabled")

    response = @whop.wallets.balance("account_id")

    assert_pattern do
      response => WhopSDK::Models::WalletBalanceResponse
    end

    assert_pattern do
      response => {
        object: WhopSDK::Models::WalletBalanceResponse::Object,
        tokens: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::WalletBalanceResponse::Token]),
        total_usd: String
      }
    end
  end

  def test_ping
    skip("Mock server tests are disabled")

    response = @whop.wallets.ping

    assert_pattern do
      response => WhopSDK::Models::WalletPingResponse
    end

    assert_pattern do
      response => {
        status: WhopSDK::Models::WalletPingResponse::Status
      }
    end
  end

  def test_send__required_params
    skip("Mock server tests are disabled")

    response = @whop.wallets.send_("account_id", amount: "amount", to: "to")

    assert_pattern do
      response => WhopSDK::Models::WalletSendResponse
    end

    assert_pattern do
      response => {
        amount: String,
        currency: String,
        destination: WhopSDK::Models::WalletSendResponse::Destination,
        object: WhopSDK::Models::WalletSendResponse::Object,
        source: WhopSDK::Models::WalletSendResponse::Source,
        tx_hash: String
      }
    end
  end
end
