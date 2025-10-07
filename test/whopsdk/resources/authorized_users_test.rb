# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::AuthorizedUsersTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.authorized_users.retrieve("ausr_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Models::AuthorizedUserRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        role: Whopsdk::AuthorizedUserRoles,
        user: Whopsdk::Models::AuthorizedUserRetrieveResponse::User
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.authorized_users.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::AuthorizedUserListResponse
    end

    assert_pattern do
      row => {
        id: String,
        role: Whopsdk::AuthorizedUserRoles,
        user: Whopsdk::Models::AuthorizedUserListResponse::User
      }
    end
  end
end
