# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ForumsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.forums.retrieve("id")

    assert_pattern do
      response => WhopSDK::Forum
    end

    assert_pattern do
      response => {
        id: String,
        email_notification_preference: WhopSDK::EmailNotificationPreferences,
        experience: WhopSDK::Forum::Experience,
        who_can_comment: WhopSDK::WhoCanCommentTypes,
        who_can_post: WhopSDK::WhoCanPostTypes
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.forums.update("id")

    assert_pattern do
      response => WhopSDK::Forum
    end

    assert_pattern do
      response => {
        id: String,
        email_notification_preference: WhopSDK::EmailNotificationPreferences,
        experience: WhopSDK::Forum::Experience,
        who_can_comment: WhopSDK::WhoCanCommentTypes,
        who_can_post: WhopSDK::WhoCanPostTypes
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.forums.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::ForumListResponse
    end

    assert_pattern do
      row => {
        id: String,
        email_notification_preference: WhopSDK::EmailNotificationPreferences,
        experience: WhopSDK::Models::ForumListResponse::Experience,
        who_can_comment: WhopSDK::WhoCanCommentTypes,
        who_can_post: WhopSDK::WhoCanPostTypes
      }
    end
  end
end
