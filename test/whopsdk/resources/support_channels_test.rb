# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::SupportChannelsTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.support_channels.retrieve("id")

    assert_pattern do
      response => Whopsdk::Models::SupportChannelRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        company_id: String | nil,
        custom_name: String | nil,
        customer_user: Whopsdk::Models::SupportChannelRetrieveResponse::CustomerUser | nil,
        last_message_at: Integer | nil,
        resolved_at: Integer | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.support_channels.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::SupportChannelListResponse
    end

    assert_pattern do
      row => {
        id: String,
        company_id: String | nil,
        custom_name: String | nil,
        customer_user: Whopsdk::Models::SupportChannelListResponse::CustomerUser | nil,
        last_message_at: Integer | nil,
        resolved_at: Integer | nil
      }
    end
  end
end
