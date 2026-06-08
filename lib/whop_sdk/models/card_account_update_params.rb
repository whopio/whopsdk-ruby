# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CardAccount#update
    class CardAccountUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The business or user account ID that owns the card account.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute auto_topup_enabled
      #   Whether auto-topup is enabled.
      #
      #   @return [Boolean, nil]
      optional :auto_topup_enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute auto_topup_target_usd
      #   Target balance (USD) to top up to. Must exceed the threshold by at least $10.
      #
      #   @return [String, nil]
      optional :auto_topup_target_usd, String

      # @!attribute auto_topup_threshold_usd
      #   Balance threshold (USD) that triggers an auto-topup. Required when enabling.
      #
      #   @return [String, nil]
      optional :auto_topup_threshold_usd, String

      # @!method initialize(account_id:, auto_topup_enabled: nil, auto_topup_target_usd: nil, auto_topup_threshold_usd: nil, request_options: {})
      #   @param account_id [String] The business or user account ID that owns the card account.
      #
      #   @param auto_topup_enabled [Boolean] Whether auto-topup is enabled.
      #
      #   @param auto_topup_target_usd [String] Target balance (USD) to top up to. Must exceed the threshold by at least $10.
      #
      #   @param auto_topup_threshold_usd [String] Balance threshold (USD) that triggers an auto-topup. Required when enabling.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
