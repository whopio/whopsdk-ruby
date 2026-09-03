# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SupportChannels#create
    class SupportChannelCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The unique identifier of the company to create the support channel in.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute user_id
      #   The user ID (e.g. 'user_xxxxx') or username of the customer to open a support
      #   channel for.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute custom_name
      #   Optional custom display name for the support channel.
      #
      #   @return [String, nil]
      optional :custom_name, String, nil?: true

      # @!attribute notifications_enabled
      #   Whether Whop app notifications are enabled for this support channel. Webhooks
      #   still fire.
      #
      #   @return [Boolean, nil]
      optional :notifications_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(account_id:, user_id:, custom_name: nil, notifications_enabled: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SupportChannelCreateParams} for more details.
      #
      #   @param account_id [String] The unique identifier of the company to create the support channel in.
      #
      #   @param user_id [String] The user ID (e.g. 'user_xxxxx') or username of the customer to open a support ch
      #
      #   @param custom_name [String, nil] Optional custom display name for the support channel.
      #
      #   @param notifications_enabled [Boolean, nil] Whether Whop app notifications are enabled for this support channel. Webhooks st
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
