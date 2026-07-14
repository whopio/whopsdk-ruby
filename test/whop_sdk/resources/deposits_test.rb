# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::DepositsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.deposits.create(destination: "string")

    assert_pattern do
      response => WhopSDK::Models::DepositCreateResponse
    end

    assert_pattern do
      response => {
        account_id: String | nil,
        hosted_url: String | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        methods_: WhopSDK::Models::DepositCreateResponse::Methods,
        object: WhopSDK::Models::DepositCreateResponse::Object,
        amount: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.deposits.list(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Models::DepositListResponse
    end

    assert_pattern do
      response => {
        account_id: String,
        bank: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::DepositListResponse::Bank]),
        object: WhopSDK::Models::DepositListResponse::Object
      }
    end
  end
end
