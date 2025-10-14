# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::ForumPostsTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.forum_posts.create(experience_id: "exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::ForumPost
    end

    assert_pattern do
      response => {
        id: String,
        comment_count: Integer,
        content: String | nil,
        is_edited: Whopsdk::Internal::Type::Boolean,
        is_pinned: Whopsdk::Internal::Type::Boolean,
        is_poster_admin: Whopsdk::Internal::Type::Boolean,
        like_count: Integer | nil,
        parent_id: String | nil,
        title: String | nil,
        user: Whopsdk::ForumPost::User,
        view_count: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.forum_posts.retrieve("id")

    assert_pattern do
      response => Whopsdk::ForumPost
    end

    assert_pattern do
      response => {
        id: String,
        comment_count: Integer,
        content: String | nil,
        is_edited: Whopsdk::Internal::Type::Boolean,
        is_pinned: Whopsdk::Internal::Type::Boolean,
        is_poster_admin: Whopsdk::Internal::Type::Boolean,
        like_count: Integer | nil,
        parent_id: String | nil,
        title: String | nil,
        user: Whopsdk::ForumPost::User,
        view_count: Integer | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.forum_posts.list(experience_id: "exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::ForumPostListResponse
    end

    assert_pattern do
      row => {
        id: String,
        comment_count: Integer,
        content: String | nil,
        is_edited: Whopsdk::Internal::Type::Boolean,
        is_pinned: Whopsdk::Internal::Type::Boolean,
        is_poster_admin: Whopsdk::Internal::Type::Boolean,
        like_count: Integer | nil,
        parent_id: String | nil,
        title: String | nil,
        user: Whopsdk::Models::ForumPostListResponse::User,
        view_count: Integer | nil
      }
    end
  end
end
