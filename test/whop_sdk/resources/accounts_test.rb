# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AccountsTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @whop.accounts.create

    assert_pattern do
      response => WhopSDK::Account
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        email: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        wallet: WhopSDK::AccountWallet | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.accounts.retrieve("account_id")

    assert_pattern do
      response => WhopSDK::Account
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        email: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        wallet: WhopSDK::AccountWallet | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.accounts.update("account_id")

    assert_pattern do
      response => WhopSDK::Account
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        email: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        wallet: WhopSDK::AccountWallet | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.accounts.list

    assert_pattern do
      response => WhopSDK::Models::AccountListResponse
    end

    assert_pattern do
      response => {
        accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account]),
        pagination: WhopSDK::Models::AccountListResponse::Pagination
      }
    end
  end
end
