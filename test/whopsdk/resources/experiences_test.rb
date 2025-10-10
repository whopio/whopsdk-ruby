# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::ExperiencesTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.experiences.create(app_id: "app_xxxxxxxxxxxxxx", company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: Whopsdk::Experience::App,
        company: Whopsdk::Experience::Company,
        created_at: Integer,
        name: String,
        order: String | nil,
        products: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Experience::Product])
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.experiences.retrieve("exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: Whopsdk::Experience::App,
        company: Whopsdk::Experience::Company,
        created_at: Integer,
        name: String,
        order: String | nil,
        products: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Experience::Product])
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whopsdk.experiences.update("exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: Whopsdk::Experience::App,
        company: Whopsdk::Experience::Company,
        created_at: Integer,
        name: String,
        order: String | nil,
        products: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Experience::Product])
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.experiences.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::ExperienceListResponse
    end

    assert_pattern do
      row => {
        id: String,
        app: Whopsdk::Models::ExperienceListResponse::App,
        company: Whopsdk::Models::ExperienceListResponse::Company,
        created_at: Integer,
        name: String,
        order: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whopsdk.experiences.delete("exp_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::Type::Boolean
    end
  end

  def test_attach_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.experiences.attach("exp_xxxxxxxxxxxxxx", product_id: "prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: Whopsdk::Experience::App,
        company: Whopsdk::Experience::Company,
        created_at: Integer,
        name: String,
        order: String | nil,
        products: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Experience::Product])
      }
    end
  end

  def test_detach_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.experiences.detach("exp_xxxxxxxxxxxxxx", product_id: "prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Experience
    end

    assert_pattern do
      response => {
        id: String,
        app: Whopsdk::Experience::App,
        company: Whopsdk::Experience::Company,
        created_at: Integer,
        name: String,
        order: String | nil,
        products: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Experience::Product])
      }
    end
  end
end
