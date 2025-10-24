# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ForumPostsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.forum_posts.create(experience_id: "exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::ForumPost
    end

    assert_pattern do
      response => {
        id: String,
        comment_count: Integer,
        content: String | nil,
        created_at: Time,
        is_edited: WhopSDK::Internal::Type::Boolean,
        is_pinned: WhopSDK::Internal::Type::Boolean,
        is_poster_admin: WhopSDK::Internal::Type::Boolean,
        like_count: Integer | nil,
        parent_id: String | nil,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::ForumPost::User,
        view_count: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.forum_posts.retrieve("id")

    assert_pattern do
      response => WhopSDK::ForumPost
    end

    assert_pattern do
      response => {
        id: String,
        comment_count: Integer,
        content: String | nil,
        created_at: Time,
        is_edited: WhopSDK::Internal::Type::Boolean,
        is_pinned: WhopSDK::Internal::Type::Boolean,
        is_poster_admin: WhopSDK::Internal::Type::Boolean,
        like_count: Integer | nil,
        parent_id: String | nil,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::ForumPost::User,
        view_count: Integer | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.forum_posts.list(experience_id: "exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::ForumPostListResponse
    end

    assert_pattern do
      row => {
        id: String,
        comment_count: Integer,
        content: String | nil,
        created_at: Time,
        is_edited: WhopSDK::Internal::Type::Boolean,
        is_pinned: WhopSDK::Internal::Type::Boolean,
        is_poster_admin: WhopSDK::Internal::Type::Boolean,
        like_count: Integer | nil,
        parent_id: String | nil,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::ForumPostListResponse::User,
        view_count: Integer | nil
      }
    end
  end
end
