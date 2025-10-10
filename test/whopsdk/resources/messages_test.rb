# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::MessagesTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.messages.create(content: "content")

    assert_pattern do
      response => Whopsdk::Message
    end

    assert_pattern do
      response => {
        id: String,
        content: String | nil,
        is_edited: Whopsdk::Internal::Type::Boolean,
        is_pinned: Whopsdk::Internal::Type::Boolean,
        message_type: Whopsdk::DmsPostTypes,
        poll: Whopsdk::Message::Poll | nil,
        poll_votes: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Message::PollVote]),
        reaction_counts: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Message::ReactionCount]),
        replying_to_message_id: String | nil,
        user: Whopsdk::Message::User,
        view_count: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.messages.retrieve("id")

    assert_pattern do
      response => Whopsdk::Message
    end

    assert_pattern do
      response => {
        id: String,
        content: String | nil,
        is_edited: Whopsdk::Internal::Type::Boolean,
        is_pinned: Whopsdk::Internal::Type::Boolean,
        message_type: Whopsdk::DmsPostTypes,
        poll: Whopsdk::Message::Poll | nil,
        poll_votes: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Message::PollVote]),
        reaction_counts: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Message::ReactionCount]),
        replying_to_message_id: String | nil,
        user: Whopsdk::Message::User,
        view_count: Integer | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.messages.list(channel_id: "channel_id")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::MessageListResponse
    end

    assert_pattern do
      row => {
        id: String,
        content: String | nil,
        is_edited: Whopsdk::Internal::Type::Boolean,
        is_pinned: Whopsdk::Internal::Type::Boolean,
        message_type: Whopsdk::DmsPostTypes,
        poll: Whopsdk::Models::MessageListResponse::Poll | nil,
        poll_votes: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::MessageListResponse::PollVote]),
        reaction_counts: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::MessageListResponse::ReactionCount]),
        replying_to_message_id: String | nil,
        user: Whopsdk::Models::MessageListResponse::User,
        view_count: Integer | nil
      }
    end
  end
end
