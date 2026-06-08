# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CardAccount#update
    class CardAccountAPI < WhopSDK::Internal::Type::BaseModel
      # @!attribute auto_topup_enabled
      #   Whether auto-topup is enabled.
      #
      #   @return [Boolean]
      required :auto_topup_enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardAccountAPI::Object]
      required :object, enum: -> { WhopSDK::CardAccountAPI::Object }

      # @!attribute auto_topup_target_usd
      #   Target balance (USD) to top up to.
      #
      #   @return [String, nil]
      optional :auto_topup_target_usd, String, nil?: true

      # @!attribute auto_topup_threshold_usd
      #   Balance threshold (USD) that triggers an auto-topup.
      #
      #   @return [String, nil]
      optional :auto_topup_threshold_usd, String, nil?: true

      # @!method initialize(auto_topup_enabled:, object:, auto_topup_target_usd: nil, auto_topup_threshold_usd: nil)
      #   @param auto_topup_enabled [Boolean] Whether auto-topup is enabled.
      #
      #   @param object [Symbol, WhopSDK::Models::CardAccountAPI::Object]
      #
      #   @param auto_topup_target_usd [String, nil] Target balance (USD) to top up to.
      #
      #   @param auto_topup_threshold_usd [String, nil] Balance threshold (USD) that triggers an auto-topup.

      # @see WhopSDK::Models::CardAccountAPI#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD_ACCOUNT = :card_account

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
