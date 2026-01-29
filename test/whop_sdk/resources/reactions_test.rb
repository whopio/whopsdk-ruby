# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ReactionsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.reactions.create(resource_id: "resource_id")

    assert_pattern do
      response => WhopSDK::Reaction
    end

    assert_pattern do
      response => {
        id: String,
        emoji: String | nil,
        resource_id: String,
        user: WhopSDK::Reaction::User
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.reactions.retrieve("reac_xxxxxxxxxxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Reaction
    end

    assert_pattern do
      response => {
        id: String,
        emoji: String | nil,
        resource_id: String,
        user: WhopSDK::Reaction::User
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.reactions.list(resource_id: "resource_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::ReactionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        emoji: String | nil,
        resource_id: String,
        user: WhopSDK::Models::ReactionListResponse::User
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.reactions.delete("reac_xxxxxxxxxxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
