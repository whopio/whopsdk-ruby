# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PaymentMethods#list
    class PaymentMethodListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute broken
      #   Filter by whether the stored credential has permanently stopped charging, such
      #   as a vault entry its provider closed.
      #
      #   @return [Boolean, nil]
      optional :broken, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute card_brands
      #   Only return cards on these networks, such as the networks the seller accepts.
      #   Payment methods that are not cards are unaffected.
      #
      #   @return [Array<Symbol, WhopSDK::Models::CardBrands>, nil]
      optional :card_brands, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::CardBrands] }, nil?: true

      # @!attribute card_funding_types
      #   Only return cards funded this way. A card whose funding could not be determined
      #   is excluded, and payment methods that are not cards are unaffected.
      #
      #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodListParams::CardFundingType>, nil]
      optional :card_funding_types,
               -> {
                 WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodListParams::CardFundingType]
               },
               nil?: true

      # @!attribute company_id
      #   The unique identifier of the company. Provide either this or member_id, not
      #   both. Omit both to address your own saved payment methods.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute created_after
      #   Only return payment methods created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return payment methods created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

      # @!attribute expired
      #   Filter by expiry. Only a card can expire, so `false` keeps every payment method
      #   that is not past its expiration month and `true` returns expired cards alone.
      #
      #   @return [Boolean, nil]
      optional :expired, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute future_usage
      #   How a payment method will be charged after the buyer leaves — the same
      #   vocabulary as a confirmation token's setup_future_usage.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentMethodListParams::FutureUsage, nil]
      optional :future_usage, enum: -> { WhopSDK::PaymentMethodListParams::FutureUsage }, nil?: true

      # @!attribute has_payer_document
      #   Filter cards by whether they carry the payer identity document their payment
      #   provider requires. Payment methods that are not cards are unaffected.
      #
      #   @return [Boolean, nil]
      optional :has_payer_document, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute member_id
      #   The unique identifier of the member to list payment methods for. Omit this and
      #   company_id to list your own saved payment methods.
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!attribute payment_method_types
      #   Only return payment methods of these types. Pass the eligible `type` values from
      #   the payment method types catalogue so the list holds nothing the purchase cannot
      #   take. An empty list returns no payment methods.
      #
      #   @return [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>, nil]
      optional :payment_method_types,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PaymentMethodTypes] },
               nil?: true

      # @!method initialize(after: nil, before: nil, broken: nil, card_brands: nil, card_funding_types: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, expired: nil, first: nil, future_usage: nil, has_payer_document: nil, last: nil, member_id: nil, payment_method_types: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentMethodListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param broken [Boolean, nil] Filter by whether the stored credential has permanently stopped charging, such a
      #
      #   @param card_brands [Array<Symbol, WhopSDK::Models::CardBrands>, nil] Only return cards on these networks, such as the networks the seller accepts. Pa
      #
      #   @param card_funding_types [Array<Symbol, WhopSDK::Models::PaymentMethodListParams::CardFundingType>, nil] Only return cards funded this way. A card whose funding could not be determined
      #
      #   @param company_id [String, nil] The unique identifier of the company. Provide either this or member_id, not both
      #
      #   @param created_after [Time, nil] Only return payment methods created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return payment methods created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param expired [Boolean, nil] Filter by expiry. Only a card can expire, so `false` keeps every payment method
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param future_usage [Symbol, WhopSDK::Models::PaymentMethodListParams::FutureUsage, nil] How a payment method will be charged after the buyer leaves — the same vocabular
      #
      #   @param has_payer_document [Boolean, nil] Filter cards by whether they carry the payer identity document their payment pro
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param member_id [String, nil] The unique identifier of the member to list payment methods for. Omit this and c
      #
      #   @param payment_method_types [Array<Symbol, WhopSDK::Models::PaymentMethodTypes>, nil] Only return payment methods of these types. Pass the eligible `type` values from
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The funding types of a card
      module CardFundingType
        extend WhopSDK::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit
        PREPAID = :prepaid

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # How a payment method will be charged after the buyer leaves — the same
      # vocabulary as a confirmation token's setup_future_usage.
      module FutureUsage
        extend WhopSDK::Internal::Type::Enum

        OFF_SESSION = :off_session
        ON_SESSION = :on_session

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
