# typed: strong

module WhopSDK
  module Resources
    # Payment methods
    class PaymentMethods
      # Retrieves the details of an existing payment method. Addresses a member's wallet
      # when member_id or company_id is given, otherwise your own.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      sig do
        params(
          id: String,
          company_id: T.nilable(String),
          member_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PaymentMethodRetrieveResponse::Variants)
      end
      def retrieve(
        # The unique identifier of the payment method.
        id,
        # The unique identifier of the company. Provide either this or member_id, not
        # both. Omit both to address your own saved payment methods.
        company_id: nil,
        # The unique identifier of the member. Provide either this or company_id, not
        # both. Omit both to address your own saved payment methods.
        member_id: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of payment methods for a member or company, or for the
      # authenticated user when neither is given, with optional filtering by creation
      # date. A payment method is a stored representation of how a customer intends to
      # pay, such as a card, bank account, or digital wallet.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          broken: T.nilable(T::Boolean),
          card_brands: T.nilable(T::Array[WhopSDK::CardBrands::OrSymbol]),
          card_funding_types:
            T.nilable(
              T::Array[
                WhopSDK::PaymentMethodListParams::CardFundingType::OrSymbol
              ]
            ),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          expired: T.nilable(T::Boolean),
          first: T.nilable(Integer),
          future_usage:
            T.nilable(WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol),
          has_payer_document: T.nilable(T::Boolean),
          last: T.nilable(Integer),
          member_id: T.nilable(String),
          payment_method_types:
            T.nilable(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::PaymentMethodListResponse::Variants
          ]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by whether the stored credential has permanently stopped charging, such
        # as a vault entry its provider closed.
        broken: nil,
        # Only return cards on these networks, such as the networks the seller accepts.
        # Payment methods that are not cards are unaffected.
        card_brands: nil,
        # Only return cards funded this way. A card whose funding could not be determined
        # is excluded, and payment methods that are not cards are unaffected.
        card_funding_types: nil,
        # The unique identifier of the company. Provide either this or member_id, not
        # both. Omit both to address your own saved payment methods.
        company_id: nil,
        # Only return payment methods created after this timestamp.
        created_after: nil,
        # Only return payment methods created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Filter by expiry. Only a card can expire, so `false` keeps every payment method
        # that is not past its expiration month and `true` returns expired cards alone.
        expired: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # How a payment method will be charged after the buyer leaves — the same
        # vocabulary as a confirmation token's setup_future_usage.
        future_usage: nil,
        # Filter cards by whether they carry the payer identity document their payment
        # provider requires. Payment methods that are not cards are unaffected.
        has_payer_document: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the member to list payment methods for. Omit this and
        # company_id to list your own saved payment methods.
        member_id: nil,
        # Only return payment methods of these types. Pass the eligible `type` values from
        # the payment method types catalogue so the list holds nothing the purchase cannot
        # take. An empty list returns no payment methods.
        payment_method_types: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
