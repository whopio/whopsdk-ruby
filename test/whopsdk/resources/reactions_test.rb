# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::ReactionsTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.reactions.create(resource_id: "resource_id")

    assert_pattern do
      response => Whopsdk::Reaction
    end

    assert_pattern do
      response => {
        id: String,
        emoji: String | nil,
        resource_id: String,
        user: Whopsdk::Reaction::User
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.reactions.retrieve("reac_xxxxxxxxxxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Reaction
    end

    assert_pattern do
      response => {
        id: String,
        emoji: String | nil,
        resource_id: String,
        user: Whopsdk::Reaction::User
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.reactions.list(resource_id: "resource_id")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::ReactionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        emoji: String | nil,
        resource_id: String,
        user: Whopsdk::Models::ReactionListResponse::User
      }
    end
  end
end
