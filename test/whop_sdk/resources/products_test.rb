# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ProductsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.products.create(title: "Interior Deep Clean")

    assert_pattern do
      response => WhopSDK::Product
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        custom_cta: WhopSDK::Product::CustomCta | nil,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        default_plan: WhopSDK::Product::DefaultPlan | nil,
        description: String | nil,
        external_identifier: String | nil,
        gallery_images: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Product::GalleryImage]),
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: WhopSDK::Product::GlobalAffiliateStatus | nil,
        headline: String | nil,
        labels: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        marketplace_status: WhopSDK::Product::MarketplaceStatus,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: WhopSDK::Product::MemberAffiliateStatus | nil,
        member_count: Float,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        owner_user: WhopSDK::Internal::Type::Unknown | nil,
        product_tax_code: WhopSDK::Internal::Type::Unknown | nil,
        published_reviews_count: Float,
        route: String,
        title: String,
        updated_at: String,
        verified: WhopSDK::Internal::Type::Boolean,
        visibility: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.products.retrieve("id")

    assert_pattern do
      response => WhopSDK::Product
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        custom_cta: WhopSDK::Product::CustomCta | nil,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        default_plan: WhopSDK::Product::DefaultPlan | nil,
        description: String | nil,
        external_identifier: String | nil,
        gallery_images: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Product::GalleryImage]),
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: WhopSDK::Product::GlobalAffiliateStatus | nil,
        headline: String | nil,
        labels: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        marketplace_status: WhopSDK::Product::MarketplaceStatus,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: WhopSDK::Product::MemberAffiliateStatus | nil,
        member_count: Float,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        owner_user: WhopSDK::Internal::Type::Unknown | nil,
        product_tax_code: WhopSDK::Internal::Type::Unknown | nil,
        published_reviews_count: Float,
        route: String,
        title: String,
        updated_at: String,
        verified: WhopSDK::Internal::Type::Boolean,
        visibility: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.products.update("id")

    assert_pattern do
      response => WhopSDK::Product
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        custom_cta: WhopSDK::Product::CustomCta | nil,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        default_plan: WhopSDK::Product::DefaultPlan | nil,
        description: String | nil,
        external_identifier: String | nil,
        gallery_images: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Product::GalleryImage]),
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: WhopSDK::Product::GlobalAffiliateStatus | nil,
        headline: String | nil,
        labels: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        marketplace_status: WhopSDK::Product::MarketplaceStatus,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: WhopSDK::Product::MemberAffiliateStatus | nil,
        member_count: Float,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        owner_user: WhopSDK::Internal::Type::Unknown | nil,
        product_tax_code: WhopSDK::Internal::Type::Unknown | nil,
        published_reviews_count: Float,
        route: String,
        title: String,
        updated_at: String,
        verified: WhopSDK::Internal::Type::Boolean,
        visibility: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.products.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::ProductListItem
    end

    assert_pattern do
      row => {
        id: String,
        account: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        default_plan: WhopSDK::ProductListItem::DefaultPlan | nil,
        description: String | nil,
        external_identifier: String | nil,
        gallery_images: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::ProductListItem::GalleryImage]),
        headline: String | nil,
        labels: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        member_count: Float,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        published_reviews_count: Float,
        route: String,
        title: String,
        updated_at: String,
        verified: WhopSDK::Internal::Type::Boolean,
        visibility: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.products.delete("id")

    assert_pattern do
      response => WhopSDK::Models::ProductDeleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        deleted: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
