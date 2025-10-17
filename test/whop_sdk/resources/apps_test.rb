# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AppsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.apps.create(company_id: "biz_xxxxxxxxxxxxxx", name: "name")

    assert_pattern do
      response => WhopSDK::App
    end

    assert_pattern do
      response => {
        id: String,
        api_key: WhopSDK::App::APIKey | nil,
        base_url: String | nil,
        company: WhopSDK::App::Company,
        creator: WhopSDK::App::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        name: String,
        requested_permissions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission]),
        stats: WhopSDK::App::Stats | nil,
        status: WhopSDK::AppStatuses,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.apps.retrieve("app_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::App
    end

    assert_pattern do
      response => {
        id: String,
        api_key: WhopSDK::App::APIKey | nil,
        base_url: String | nil,
        company: WhopSDK::App::Company,
        creator: WhopSDK::App::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        name: String,
        requested_permissions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission]),
        stats: WhopSDK::App::Stats | nil,
        status: WhopSDK::AppStatuses,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.apps.update("app_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::App
    end

    assert_pattern do
      response => {
        id: String,
        api_key: WhopSDK::App::APIKey | nil,
        base_url: String | nil,
        company: WhopSDK::App::Company,
        creator: WhopSDK::App::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        name: String,
        requested_permissions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission]),
        stats: WhopSDK::App::Stats | nil,
        status: WhopSDK::AppStatuses,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

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
        base_url: String | nil,
        company: WhopSDK::Models::AppListResponse::Company,
        creator: WhopSDK::Models::AppListResponse::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        name: String,
        status: WhopSDK::AppStatuses,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
