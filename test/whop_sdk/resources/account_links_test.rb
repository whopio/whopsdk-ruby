# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AccountLinksTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.account_links.create(
        company_id: "biz_xxxxxxxxxxxxxx",
        refresh_url: "refresh_url",
        return_url: "return_url",
        use_case: :account_onboarding
      )

    assert_pattern do
      response => WhopSDK::Models::AccountLinkCreateResponse
    end

    assert_pattern do
      response => {
        expires_at: Time,
        url: String
      }
    end
  end
end
