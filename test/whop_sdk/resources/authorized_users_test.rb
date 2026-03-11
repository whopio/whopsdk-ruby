# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AuthorizedUsersTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.authorized_users.create(
        company_id: "biz_xxxxxxxxxxxxxx",
        role: :owner,
        user_id: "user_xxxxxxxxxxxxx"
      )

    assert_pattern do
      response => WhopSDK::AuthorizedUser
    end

    assert_pattern do
      response => {
        id: String,
        company: WhopSDK::AuthorizedUser::Company,
        role: WhopSDK::AuthorizedUserRoles,
        user: WhopSDK::AuthorizedUser::User
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.authorized_users.retrieve("ausr_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::AuthorizedUser
    end

    assert_pattern do
      response => {
        id: String,
        company: WhopSDK::AuthorizedUser::Company,
        role: WhopSDK::AuthorizedUserRoles,
        user: WhopSDK::AuthorizedUser::User
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.authorized_users.list

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
        company: WhopSDK::Models::AuthorizedUserListResponse::Company,
        role: WhopSDK::AuthorizedUserRoles,
        user: WhopSDK::Models::AuthorizedUserListResponse::User
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.authorized_users.delete("ausr_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
