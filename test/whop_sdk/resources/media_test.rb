# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::MediaTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.media.retrieve("id")

    assert_pattern do
      response => WhopSDK::MediaAsset
    end

    assert_pattern do
      response => {
        id: String,
        amount_charged: Float | nil,
        completed_at: String | nil,
        created_at: String,
        currency: String,
        error_message: String | nil,
        file: WhopSDK::MediaAsset::File | nil,
        generation: WhopSDK::MediaAsset::Generation,
        media_type: WhopSDK::MediaAsset::MediaType,
        source: WhopSDK::MediaAsset::Source,
        status: WhopSDK::MediaAsset::Status
      }
    end
  end

  def test_generate_required_params
    skip("Mock server tests are disabled")

    response = @whop.media.generate(prompt: "prompt", type: :video)

    assert_pattern do
      response => WhopSDK::MediaAsset
    end

    assert_pattern do
      response => {
        id: String,
        amount_charged: Float | nil,
        completed_at: String | nil,
        created_at: String,
        currency: String,
        error_message: String | nil,
        file: WhopSDK::MediaAsset::File | nil,
        generation: WhopSDK::MediaAsset::Generation,
        media_type: WhopSDK::MediaAsset::MediaType,
        source: WhopSDK::MediaAsset::Source,
        status: WhopSDK::MediaAsset::Status
      }
    end
  end
end
