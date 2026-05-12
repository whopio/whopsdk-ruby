# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::BountiesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.bounties.create(base_unit_amount: 6.9, currency: :usd, description: "description", title: "title")

    assert_pattern do
      response => WhopSDK::Models::BountyCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        bounty_type: WhopSDK::Models::BountyCreateResponse::BountyType,
        created_at: Time,
        currency: WhopSDK::Currency,
        description: String,
        status: WhopSDK::Models::BountyCreateResponse::Status,
        title: String,
        total_available: Float,
        total_paid: Float,
        updated_at: Time,
        vote_threshold: Integer
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.bounties.retrieve("bnty_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::BountyRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        bounty_type: WhopSDK::Models::BountyRetrieveResponse::BountyType,
        created_at: Time,
        currency: WhopSDK::Currency,
        description: String,
        status: WhopSDK::Models::BountyRetrieveResponse::Status,
        title: String,
        total_available: Float,
        total_paid: Float,
        updated_at: Time,
        vote_threshold: Integer
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.bounties.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::BountyListResponse
    end

    assert_pattern do
      row => {
        id: String,
        bounty_type: WhopSDK::Models::BountyListResponse::BountyType,
        created_at: Time,
        currency: WhopSDK::Currency,
        description: String,
        status: WhopSDK::Models::BountyListResponse::Status,
        title: String,
        total_available: Float,
        total_paid: Float,
        updated_at: Time,
        vote_threshold: Integer
      }
    end
  end
end
