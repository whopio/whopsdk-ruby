# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AccountsTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @whop.accounts.create

    assert_pattern do
      response => WhopSDK::Account
    end

    assert_pattern do
      response => {
        id: String,
        banner_image_url: String | nil,
        business_type: String | nil,
        country: String | nil,
        created_at: String,
        description: String | nil,
        email: String | nil,
        home_preferences: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        industry_group: String | nil,
        industry_type: String | nil,
        invoice_prefix: String | nil,
        logo_url: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        onboarding_type: String | nil,
        opengraph_image_url: String | nil,
        opengraph_image_variant: String | nil,
        other_business_description: String | nil,
        other_industry_description: String | nil,
        parent_account_id: String | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        title: String,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        wallet: WhopSDK::AccountWallet | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.accounts.retrieve("account_id")

    assert_pattern do
      response => WhopSDK::Account
    end

    assert_pattern do
      response => {
        id: String,
        banner_image_url: String | nil,
        business_type: String | nil,
        country: String | nil,
        created_at: String,
        description: String | nil,
        email: String | nil,
        home_preferences: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        industry_group: String | nil,
        industry_type: String | nil,
        invoice_prefix: String | nil,
        logo_url: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        onboarding_type: String | nil,
        opengraph_image_url: String | nil,
        opengraph_image_variant: String | nil,
        other_business_description: String | nil,
        other_industry_description: String | nil,
        parent_account_id: String | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        title: String,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        wallet: WhopSDK::AccountWallet | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.accounts.update("account_id")

    assert_pattern do
      response => WhopSDK::Account
    end

    assert_pattern do
      response => {
        id: String,
        banner_image_url: String | nil,
        business_type: String | nil,
        country: String | nil,
        created_at: String,
        description: String | nil,
        email: String | nil,
        home_preferences: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        industry_group: String | nil,
        industry_type: String | nil,
        invoice_prefix: String | nil,
        logo_url: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        onboarding_type: String | nil,
        opengraph_image_url: String | nil,
        opengraph_image_variant: String | nil,
        other_business_description: String | nil,
        other_industry_description: String | nil,
        parent_account_id: String | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        title: String,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        wallet: WhopSDK::AccountWallet | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.accounts.list

    assert_pattern do
      response => WhopSDK::Models::AccountListResponse
    end

    assert_pattern do
      response => {
        accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account]),
        pagination: WhopSDK::Models::AccountListResponse::Pagination
      }
    end
  end

  def test_me
    skip("Mock server tests are disabled")

    response = @whop.accounts.me

    assert_pattern do
      response => WhopSDK::Account
    end

    assert_pattern do
      response => {
        id: String,
        banner_image_url: String | nil,
        business_type: String | nil,
        country: String | nil,
        created_at: String,
        description: String | nil,
        email: String | nil,
        home_preferences: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        industry_group: String | nil,
        industry_type: String | nil,
        invoice_prefix: String | nil,
        logo_url: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        onboarding_type: String | nil,
        opengraph_image_url: String | nil,
        opengraph_image_variant: String | nil,
        other_business_description: String | nil,
        other_industry_description: String | nil,
        parent_account_id: String | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        title: String,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        wallet: WhopSDK::AccountWallet | nil
      }
    end
  end
end
