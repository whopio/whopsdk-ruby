# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::AppsTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.apps.create(company_id: "biz_xxxxxxxxxxxxxx", name: "name")

    assert_pattern do
      response => Whopsdk::App
    end

    assert_pattern do
      response => {
        id: String,
        api_key: Whopsdk::App::APIKey | nil,
        base_url: String | nil,
        company: Whopsdk::App::Company,
        creator: Whopsdk::App::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        name: String,
        requested_permissions: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::App::RequestedPermission]),
        stats: Whopsdk::App::Stats | nil,
        status: Whopsdk::AppStatuses | nil,
        verified: Whopsdk::Internal::Type::Boolean
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.apps.retrieve("app_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::App
    end

    assert_pattern do
      response => {
        id: String,
        api_key: Whopsdk::App::APIKey | nil,
        base_url: String | nil,
        company: Whopsdk::App::Company,
        creator: Whopsdk::App::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        name: String,
        requested_permissions: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::App::RequestedPermission]),
        stats: Whopsdk::App::Stats | nil,
        status: Whopsdk::AppStatuses | nil,
        verified: Whopsdk::Internal::Type::Boolean
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whopsdk.apps.update("app_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::App
    end

    assert_pattern do
      response => {
        id: String,
        api_key: Whopsdk::App::APIKey | nil,
        base_url: String | nil,
        company: Whopsdk::App::Company,
        creator: Whopsdk::App::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        name: String,
        requested_permissions: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::App::RequestedPermission]),
        stats: Whopsdk::App::Stats | nil,
        status: Whopsdk::AppStatuses | nil,
        verified: Whopsdk::Internal::Type::Boolean
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whopsdk.apps.list

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::AppListResponse
    end

    assert_pattern do
      row => {
        id: String,
        base_url: String | nil,
        company: Whopsdk::Models::AppListResponse::Company,
        creator: Whopsdk::Models::AppListResponse::Creator,
        dashboard_path: String | nil,
        description: String | nil,
        discover_path: String | nil,
        domain_id: String,
        experience_path: String | nil,
        name: String,
        status: Whopsdk::AppStatuses | nil,
        verified: Whopsdk::Internal::Type::Boolean
      }
    end
  end
end
