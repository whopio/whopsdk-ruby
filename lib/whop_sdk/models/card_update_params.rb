# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#update
    class CardUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute card_id
      #
      #   @return [String]
      required :card_id, String

      # @!attribute account_id
      #   The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute billing
      #   New billing address. Requires line1, city, region, postal_code, and
      #   country_code.
      #
      #   @return [WhopSDK::Models::CardUpdateParams::Billing, nil]
      optional :billing, -> { WhopSDK::CardUpdateParams::Billing }

      # @!attribute canceled
      #   Pass `true` to permanently cancel the card. A canceled card cannot be
      #   uncanceled. Cannot be combined with other fields.
      #
      #   @return [Boolean, nil]
      optional :canceled, WhopSDK::Internal::Type::Boolean

      # @!attribute frozen
      #   Pass `true` to freeze the card, `false` to unfreeze it.
      #
      #   @return [Boolean, nil]
      optional :frozen, WhopSDK::Internal::Type::Boolean

      # @!attribute name
      #   A display name for the card.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute pin
      #   New 4-digit PIN. Can only be set on a card assigned to the acting user.
      #
      #   @return [String, nil]
      optional :pin, String

      # @!attribute remove_limit
      #   Pass `true` to remove the spending limit (make the card unlimited).
      #
      #   @return [Boolean, nil]
      optional :remove_limit, WhopSDK::Internal::Type::Boolean

      # @!attribute spend_limit
      #   Spending limit amount, in dollars.
      #
      #   @return [Float, nil]
      optional :spend_limit, Float

      # @!attribute spend_limit_frequency
      #   The spending limit window.
      #
      #   @return [Symbol, WhopSDK::Models::CardUpdateParams::SpendLimitFrequency, nil]
      optional :spend_limit_frequency, enum: -> { WhopSDK::CardUpdateParams::SpendLimitFrequency }

      # @!attribute transaction_limit
      #   Per-transaction limit amount, in dollars.
      #
      #   @return [Float, nil]
      optional :transaction_limit, Float

      # @!attribute user_id
      #   The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(card_id:, account_id: nil, billing: nil, canceled: nil, frozen: nil, name: nil, pin: nil, remove_limit: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardUpdateParams} for more details.
      #
      #   @param card_id [String]
      #
      #   @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @param billing [WhopSDK::Models::CardUpdateParams::Billing] New billing address. Requires line1, city, region, postal_code, and country_code
      #
      #   @param canceled [Boolean] Pass `true` to permanently cancel the card. A canceled card cannot be uncanceled
      #
      #   @param frozen [Boolean] Pass `true` to freeze the card, `false` to unfreeze it.
      #
      #   @param name [String] A display name for the card.
      #
      #   @param pin [String] New 4-digit PIN. Can only be set on a card assigned to the acting user.
      #
      #   @param remove_limit [Boolean] Pass `true` to remove the spending limit (make the card unlimited).
      #
      #   @param spend_limit [Float] Spending limit amount, in dollars.
      #
      #   @param spend_limit_frequency [Symbol, WhopSDK::Models::CardUpdateParams::SpendLimitFrequency] The spending limit window.
      #
      #   @param transaction_limit [Float] Per-transaction limit amount, in dollars.
      #
      #   @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Billing < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #   Billing city.
        #
        #   @return [String]
        required :city, String

        # @!attribute country_code
        #   Billing country code, ISO 3166-1 alpha-2.
        #
        #   @return [String]
        required :country_code, String

        # @!attribute line1
        #   Street address line 1.
        #
        #   @return [String]
        required :line1, String

        # @!attribute postal_code
        #   Billing postal code.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute region
        #   Billing region or state.
        #
        #   @return [String]
        required :region, String

        # @!attribute line2
        #   Street address line 2.
        #
        #   @return [String, nil]
        optional :line2, String

        # @!method initialize(city:, country_code:, line1:, postal_code:, region:, line2: nil)
        #   New billing address. Requires line1, city, region, postal_code, and
        #   country_code.
        #
        #   @param city [String] Billing city.
        #
        #   @param country_code [String] Billing country code, ISO 3166-1 alpha-2.
        #
        #   @param line1 [String] Street address line 1.
        #
        #   @param postal_code [String] Billing postal code.
        #
        #   @param region [String] Billing region or state.
        #
        #   @param line2 [String] Street address line 2.
      end

      # The spending limit window.
      module SpendLimitFrequency
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
