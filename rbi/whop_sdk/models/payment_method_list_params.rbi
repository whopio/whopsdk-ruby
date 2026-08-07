# typed: strong

module WhopSDK
  module Models
    class PaymentMethodListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentMethodListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The unique identifier of the company. Provide either this or member_id, not
      # both. Omit both to address your own saved payment methods.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return payment methods created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return payment methods created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # How a payment method will be charged after the buyer leaves — the same
      # vocabulary as a confirmation token's setup_future_usage.
      sig do
        returns(
          T.nilable(WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol)
        )
      end
      attr_accessor :future_usage

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The unique identifier of the member to list payment methods for. Omit this and
      # company_id to list your own saved payment methods.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          future_usage:
            T.nilable(WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol),
          last: T.nilable(Integer),
          member_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company. Provide either this or member_id, not
        # both. Omit both to address your own saved payment methods.
        company_id: nil,
        # Only return payment methods created after this timestamp.
        created_after: nil,
        # Only return payment methods created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # How a payment method will be charged after the buyer leaves — the same
        # vocabulary as a confirmation token's setup_future_usage.
        future_usage: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the member to list payment methods for. Omit this and
        # company_id to list your own saved payment methods.
        member_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            future_usage:
              T.nilable(
                WhopSDK::PaymentMethodListParams::FutureUsage::OrSymbol
              ),
            last: T.nilable(Integer),
            member_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # How a payment method will be charged after the buyer leaves — the same
      # vocabulary as a confirmation token's setup_future_usage.
      module FutureUsage
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::PaymentMethodListParams::FutureUsage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OFF_SESSION =
          T.let(
            :off_session,
            WhopSDK::PaymentMethodListParams::FutureUsage::TaggedSymbol
          )
        ON_SESSION =
          T.let(
            :on_session,
            WhopSDK::PaymentMethodListParams::FutureUsage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::PaymentMethodListParams::FutureUsage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
