# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::DepositsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.deposits.create(amount: 0, destination: "string")

    assert_pattern do
      response => WhopSDK::Models::DepositCreateResponse
    end

    assert_pattern do
      response => {
        amount: String,
        deposit_address: WhopSDK::Models::DepositCreateResponse::DepositAddress,
        destination: WhopSDK::Models::DepositCreateResponse::Destination,
        hosted_url: String | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        object: WhopSDK::Models::DepositCreateResponse::Object
      }
    end
  end
end
