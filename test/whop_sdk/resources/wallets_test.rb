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
end
