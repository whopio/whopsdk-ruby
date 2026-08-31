# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AppsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.apps.create(name: "Shine Time Booking")

    assert_pattern do
      response => WhopSDK::App
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::App::Account,
        api_key: WhopSDK::App::APIKey | nil,
        app_store_description: String | nil,
        app_type: WhopSDK::App::AppType,
        banner_image: WhopSDK::App::BannerImage | nil,
        base_url: String | nil,
        businesses_created_count: Integer,
        businesses_created_logo_urls: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        creator: WhopSDK::App::Creator,
        dashboard_path: String | nil,
        default_api_key: WhopSDK::App::DefaultAPIKey | nil,
        deployment: WhopSDK::App::Deployment | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        elements_used: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::App::ElementsUsed]),
        experience_path: String | nil,
        hosted_url: String | nil,
        icon: WhopSDK::App::Icon,
        marketplace_status: WhopSDK::App::MarketplaceStatus | nil,
        name: String,
        oauth_client_type: WhopSDK::App::OAuthClientType,
        openapi_path: String | nil,
        origin: String | nil,
        preview_token: String | nil,
        product_id: String | nil,
        production_android_build: WhopSDK::App::ProductionAndroidBuild | nil,
        production_ios_build: WhopSDK::App::ProductionIosBuild | nil,
        production_web_build: WhopSDK::App::ProductionWebBuild | nil,
        redirect_uris: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        requested_permissions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission]),
        required_scopes: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::App::RequiredScope]),
        route: String | nil,
        secrets: WhopSDK::Internal::Type::Unknown | nil,
        skills_path: String | nil,
        status: WhopSDK::App::Status,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.apps.retrieve("id")

    assert_pattern do
      response => WhopSDK::App
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::App::Account,
        api_key: WhopSDK::App::APIKey | nil,
        app_store_description: String | nil,
        app_type: WhopSDK::App::AppType,
        banner_image: WhopSDK::App::BannerImage | nil,
        base_url: String | nil,
        businesses_created_count: Integer,
        businesses_created_logo_urls: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        creator: WhopSDK::App::Creator,
        dashboard_path: String | nil,
        default_api_key: WhopSDK::App::DefaultAPIKey | nil,
        deployment: WhopSDK::App::Deployment | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        elements_used: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::App::ElementsUsed]),
        experience_path: String | nil,
        hosted_url: String | nil,
        icon: WhopSDK::App::Icon,
        marketplace_status: WhopSDK::App::MarketplaceStatus | nil,
        name: String,
        oauth_client_type: WhopSDK::App::OAuthClientType,
        openapi_path: String | nil,
        origin: String | nil,
        preview_token: String | nil,
        product_id: String | nil,
        production_android_build: WhopSDK::App::ProductionAndroidBuild | nil,
        production_ios_build: WhopSDK::App::ProductionIosBuild | nil,
        production_web_build: WhopSDK::App::ProductionWebBuild | nil,
        redirect_uris: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        requested_permissions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission]),
        required_scopes: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::App::RequiredScope]),
        route: String | nil,
        secrets: WhopSDK::Internal::Type::Unknown | nil,
        skills_path: String | nil,
        status: WhopSDK::App::Status,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.apps.update("id")

    assert_pattern do
      response => WhopSDK::App
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::App::Account,
        api_key: WhopSDK::App::APIKey | nil,
        app_store_description: String | nil,
        app_type: WhopSDK::App::AppType,
        banner_image: WhopSDK::App::BannerImage | nil,
        base_url: String | nil,
        businesses_created_count: Integer,
        businesses_created_logo_urls: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        creator: WhopSDK::App::Creator,
        dashboard_path: String | nil,
        default_api_key: WhopSDK::App::DefaultAPIKey | nil,
        deployment: WhopSDK::App::Deployment | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        elements_used: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::App::ElementsUsed]),
        experience_path: String | nil,
        hosted_url: String | nil,
        icon: WhopSDK::App::Icon,
        marketplace_status: WhopSDK::App::MarketplaceStatus | nil,
        name: String,
        oauth_client_type: WhopSDK::App::OAuthClientType,
        openapi_path: String | nil,
        origin: String | nil,
        preview_token: String | nil,
        product_id: String | nil,
        production_android_build: WhopSDK::App::ProductionAndroidBuild | nil,
        production_ios_build: WhopSDK::App::ProductionIosBuild | nil,
        production_web_build: WhopSDK::App::ProductionWebBuild | nil,
        redirect_uris: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        requested_permissions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission]),
        required_scopes: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::App::RequiredScope]),
        route: String | nil,
        secrets: WhopSDK::Internal::Type::Unknown | nil,
        skills_path: String | nil,
        status: WhopSDK::App::Status,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.apps.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AppListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account: WhopSDK::Models::AppListResponse::Account,
        app_type: WhopSDK::Models::AppListResponse::AppType,
        banner_image: WhopSDK::Models::AppListResponse::BannerImage | nil,
        base_url: String | nil,
        businesses_created_count: Integer,
        businesses_created_logo_urls: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        creator: WhopSDK::Models::AppListResponse::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        hosted_url: String | nil,
        icon: WhopSDK::Models::AppListResponse::Icon,
        name: String,
        openapi_path: String | nil,
        origin: String | nil,
        route: String | nil,
        skills_path: String | nil,
        status: WhopSDK::Models::AppListResponse::Status,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
