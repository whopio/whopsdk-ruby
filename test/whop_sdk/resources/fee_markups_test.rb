# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::FeeMarkupsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.fee_markups.create(company_id: "biz_xxxxxxxxxxxxxx", fee_type: :crypto_withdrawal_markup)

    assert_pattern do
      response => WhopSDK::Models::FeeMarkupCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        fee_type: WhopSDK::FeeMarkupType,
        fixed_fee_usd: Float | nil,
        notes: String | nil,
        percentage_fee: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.fee_markups.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::FeeMarkupListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        fee_type: WhopSDK::FeeMarkupType,
        fixed_fee_usd: Float | nil,
        notes: String | nil,
        percentage_fee: Float | nil,
        updated_at: Time
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.fee_markups.delete("id")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
