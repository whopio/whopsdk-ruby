# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AuthorizedUsersTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.authorized_users.retrieve("ausr_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AuthorizedUserRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        role: WhopSDK::AuthorizedUserRoles,
        user: WhopSDK::Models::AuthorizedUserRetrieveResponse::User
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.authorized_users.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AuthorizedUserListResponse
    end

    assert_pattern do
      row => {
        id: String,
        role: WhopSDK::AuthorizedUserRoles,
        user: WhopSDK::Models::AuthorizedUserListResponse::User
      }
    end
  end
end
