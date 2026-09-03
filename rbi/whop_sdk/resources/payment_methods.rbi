# typed: strong

module WhopSDK
  module Resources
    class PaymentMethods
      # Retrieves the details of an existing payment method. Addresses a member's wallet
      # when member_id or account_id is given, otherwise your own.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      sig do
        params(
          id: String,
          account_id: String,
          member_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PaymentMethodRetrieveResponse::Variants)
      end
      def retrieve(
        # The unique identifier of the payment method.
        id,
        # The unique identifier of the company. Provide either this or member_id, not
        # both. Omit both to address your own saved payment methods.
        account_id: nil,
        # The unique identifier of the member. Provide either this or account_id, not
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
          account_id: String,
          after: String,
          before: String,
          broken: T::Boolean,
          card_brands: T::Array[WhopSDK::CardBrands::OrSymbol],
          card_funding_types:
            T::Array[
              WhopSDK::PaymentMethodListParams::CardFundingType::OrSymbol
            ],
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          expired: T::Boolean,
          first: Integer,
          future_usage: WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol,
          has_payer_document: T::Boolean,
          last: Integer,
          member_id: String,
          payment_method_types: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::PaymentMethodListResponse::Variants
          ]
        )
      end
      def list(
        # The unique identifier of the company. Provide either this or member_id, not
        # both. Omit both to address your own saved payment methods.
        account_id: nil,
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
        # Only return payment methods created after this timestamp.
        created_after: nil,
        # Only return payment methods created before this timestamp.
        created_before: nil,
        # The sort direction for ordering results, either ascending or descending.
        direction: nil,
        # Filter by expiry. Only a card can expire, so `false` keeps every payment method
        # that is not past its expiration month and `true` returns expired cards alone.
        expired: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Only return methods that can be charged this way after the buyer leaves. Every
        # stored credential answers either usage today, so this narrows nothing — it used
        # to drop the buyer's platform balance, which now lists on its own endpoint
        # instead of here.
        future_usage: nil,
        # Filter cards by whether they carry the payer identity document their payment
        # provider requires. Payment methods that are not cards are unaffected.
        has_payer_document: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the member to list payment methods for. Omit this and
        # account_id to list your own saved payment methods.
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
