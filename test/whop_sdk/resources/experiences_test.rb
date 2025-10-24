# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ExperiencesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.experiences.create(app_id: "app_xxxxxxxxxxxxxx", company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: WhopSDK::Experience::App,
        company: WhopSDK::Experience::Company,
        created_at: Time,
        image: WhopSDK::Experience::Image | nil,
        name: String,
        order: String | nil,
        products: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Experience::Product])
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.experiences.retrieve("exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: WhopSDK::Experience::App,
        company: WhopSDK::Experience::Company,
        created_at: Time,
        image: WhopSDK::Experience::Image | nil,
        name: String,
        order: String | nil,
        products: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Experience::Product])
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.experiences.update("exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: WhopSDK::Experience::App,
        company: WhopSDK::Experience::Company,
        created_at: Time,
        image: WhopSDK::Experience::Image | nil,
        name: String,
        order: String | nil,
        products: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Experience::Product])
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.experiences.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::ExperienceListResponse
    end

    assert_pattern do
      row => {
        id: String,
        app: WhopSDK::Models::ExperienceListResponse::App,
        company: WhopSDK::Models::ExperienceListResponse::Company,
        created_at: Time,
        image: WhopSDK::Models::ExperienceListResponse::Image | nil,
        name: String,
        order: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.experiences.delete("exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_attach_required_params
    skip("Prism tests are disabled")

    response = @whop.experiences.attach("exp_xxxxxxxxxxxxxx", product_id: "prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: WhopSDK::Experience::App,
        company: WhopSDK::Experience::Company,
        created_at: Time,
        image: WhopSDK::Experience::Image | nil,
        name: String,
        order: String | nil,
        products: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Experience::Product])
      }
    end
  end

  def test_detach_required_params
    skip("Prism tests are disabled")

    response = @whop.experiences.detach("exp_xxxxxxxxxxxxxx", product_id: "prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: WhopSDK::Experience::App,
        company: WhopSDK::Experience::Company,
        created_at: Time,
        image: WhopSDK::Experience::Image | nil,
        name: String,
        order: String | nil,
        products: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Experience::Product])
      }
    end
  end

  def test_duplicate
    skip("Prism tests are disabled")

    response = @whop.experiences.duplicate("exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: WhopSDK::Experience::App,
        company: WhopSDK::Experience::Company,
        created_at: Time,
        image: WhopSDK::Experience::Image | nil,
        name: String,
        order: String | nil,
        products: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Experience::Product])
      }
    end
  end
end
