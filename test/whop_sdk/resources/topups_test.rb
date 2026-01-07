# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::TopupsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @whop.topups.create(
        amount: 6.9,
        company_id: "biz_xxxxxxxxxxxxxx",
        currency: :usd,
        payment_method_id: "pmt_xxxxxxxxxxxxxx"
      )

    assert_pattern do
      response => WhopSDK::Models::TopupCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        failure_message: String | nil,
        paid_at: Time | nil,
        status: WhopSDK::ReceiptStatus | nil,
        total: Float | nil
      }
    end
  end
end
