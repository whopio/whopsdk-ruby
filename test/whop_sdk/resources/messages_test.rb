# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::MessagesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.messages.create(channel_id: "channel_id", content: "content")

    assert_pattern do
      response => WhopSDK::Message
    end

    assert_pattern do
      response => {
        id: String,
        content: String | nil,
        created_at: Time,
        is_edited: WhopSDK::Internal::Type::Boolean,
        is_pinned: WhopSDK::Internal::Type::Boolean,
        message_type: WhopSDK::DmsPostTypes,
        poll: WhopSDK::Message::Poll | nil,
        poll_votes: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::PollVote]),
        reaction_counts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::ReactionCount]),
        replying_to_message_id: String | nil,
        updated_at: Time,
        user: WhopSDK::Message::User,
        view_count: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.messages.retrieve("id")

    assert_pattern do
      response => WhopSDK::Message
    end

    assert_pattern do
      response => {
        id: String,
        content: String | nil,
        created_at: Time,
        is_edited: WhopSDK::Internal::Type::Boolean,
        is_pinned: WhopSDK::Internal::Type::Boolean,
        message_type: WhopSDK::DmsPostTypes,
        poll: WhopSDK::Message::Poll | nil,
        poll_votes: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::PollVote]),
        reaction_counts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::ReactionCount]),
        replying_to_message_id: String | nil,
        updated_at: Time,
        user: WhopSDK::Message::User,
        view_count: Integer | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.messages.update("id")

    assert_pattern do
      response => WhopSDK::Message
    end

    assert_pattern do
      response => {
        id: String,
        content: String | nil,
        created_at: Time,
        is_edited: WhopSDK::Internal::Type::Boolean,
        is_pinned: WhopSDK::Internal::Type::Boolean,
        message_type: WhopSDK::DmsPostTypes,
        poll: WhopSDK::Message::Poll | nil,
        poll_votes: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::PollVote]),
        reaction_counts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Message::ReactionCount]),
        replying_to_message_id: String | nil,
        updated_at: Time,
        user: WhopSDK::Message::User,
        view_count: Integer | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.messages.list(channel_id: "channel_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::MessageListResponse
    end

    assert_pattern do
      row => {
        id: String,
        content: String | nil,
        created_at: Time,
        is_edited: WhopSDK::Internal::Type::Boolean,
        is_pinned: WhopSDK::Internal::Type::Boolean,
        message_type: WhopSDK::DmsPostTypes,
        poll: WhopSDK::Models::MessageListResponse::Poll | nil,
        poll_votes: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MessageListResponse::PollVote]),
        reaction_counts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MessageListResponse::ReactionCount]),
        replying_to_message_id: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::MessageListResponse::User,
        view_count: Integer | nil
      }
    end
  end
end
