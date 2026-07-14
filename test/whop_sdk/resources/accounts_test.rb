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
        balances: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::Balance]),
        banner_image_url: String | nil,
        business_address: WhopSDK::Internal::Type::Unknown | nil,
        business_type: String | nil,
        capabilities: WhopSDK::Account::Capabilities | nil,
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
        product_tax_code: WhopSDK::Internal::Type::Unknown | nil,
        recommended_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RecommendedAction]) | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        required_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RequiredAction]) | nil,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        status: String | nil,
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        tax_identifiers: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        tax_remitted_by: String | nil,
        title: String,
        total_earned_usd: Float | nil,
        total_usd: String | nil,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        verification: WhopSDK::Internal::Type::Unknown,
        wallet: WhopSDK::Account::Wallet | nil
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
        balances: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::Balance]),
        banner_image_url: String | nil,
        business_address: WhopSDK::Internal::Type::Unknown | nil,
        business_type: String | nil,
        capabilities: WhopSDK::Account::Capabilities | nil,
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
        product_tax_code: WhopSDK::Internal::Type::Unknown | nil,
        recommended_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RecommendedAction]) | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        required_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RequiredAction]) | nil,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        status: String | nil,
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        tax_identifiers: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        tax_remitted_by: String | nil,
        title: String,
        total_earned_usd: Float | nil,
        total_usd: String | nil,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        verification: WhopSDK::Internal::Type::Unknown,
        wallet: WhopSDK::Account::Wallet | nil
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
        balances: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::Balance]),
        banner_image_url: String | nil,
        business_address: WhopSDK::Internal::Type::Unknown | nil,
        business_type: String | nil,
        capabilities: WhopSDK::Account::Capabilities | nil,
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
        product_tax_code: WhopSDK::Internal::Type::Unknown | nil,
        recommended_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RecommendedAction]) | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        required_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RequiredAction]) | nil,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        status: String | nil,
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        tax_identifiers: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        tax_remitted_by: String | nil,
        title: String,
        total_earned_usd: Float | nil,
        total_usd: String | nil,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        verification: WhopSDK::Internal::Type::Unknown,
        wallet: WhopSDK::Account::Wallet | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.accounts.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Account
    end

    assert_pattern do
      row => {
        id: String,
        balances: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::Balance]),
        banner_image_url: String | nil,
        business_address: WhopSDK::Internal::Type::Unknown | nil,
        business_type: String | nil,
        capabilities: WhopSDK::Account::Capabilities | nil,
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
        product_tax_code: WhopSDK::Internal::Type::Unknown | nil,
        recommended_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RecommendedAction]) | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        required_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RequiredAction]) | nil,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        status: String | nil,
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        tax_identifiers: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        tax_remitted_by: String | nil,
        title: String,
        total_earned_usd: Float | nil,
        total_usd: String | nil,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        verification: WhopSDK::Internal::Type::Unknown,
        wallet: WhopSDK::Account::Wallet | nil
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
        balances: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::Balance]),
        banner_image_url: String | nil,
        business_address: WhopSDK::Internal::Type::Unknown | nil,
        business_type: String | nil,
        capabilities: WhopSDK::Account::Capabilities | nil,
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
        product_tax_code: WhopSDK::Internal::Type::Unknown | nil,
        recommended_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RecommendedAction]) | nil,
        require_2fa: WhopSDK::Internal::Type::Boolean,
        required_actions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account::RequiredAction]) | nil,
        route: String,
        send_customer_emails: WhopSDK::Internal::Type::Boolean,
        show_joined_whops: WhopSDK::Internal::Type::Boolean,
        show_reviews_dtc: WhopSDK::Internal::Type::Boolean,
        show_user_directory: WhopSDK::Internal::Type::Boolean,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink]),
        status: String | nil,
        store_page_config: WhopSDK::Internal::Type::Unknown,
        target_audience: String | nil,
        tax_identifiers: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        tax_remitted_by: String | nil,
        title: String,
        total_earned_usd: Float | nil,
        total_usd: String | nil,
        use_logo_as_opengraph_image_fallback: WhopSDK::Internal::Type::Boolean,
        verification: WhopSDK::Internal::Type::Unknown,
        wallet: WhopSDK::Account::Wallet | nil
      }
    end
  end

  def test_recommend_actions
    skip("Mock server tests are disabled")

    response = @whop.accounts.recommend_actions("account_id")

    assert_pattern do
      response => WhopSDK::Models::AccountRecommendActionsResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AccountRecommendActionsResponse::Data])
      }
    end
  end
end
