# typed: strong

module WhopSDK
  module Models
    class PromoCodeListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PromoCodeListParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to list promo codes for.
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return promo codes created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return promo codes created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Filter to only promo codes scoped to these plan identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :plan_ids

      sig { params(plan_ids: T::Array[String]).void }
      attr_writer :plan_ids

      # Filter to only promo codes scoped to these product identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      # Filter to only promo codes matching this status.
      sig { returns(T.nilable(WhopSDK::PromoCodeStatus::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::PromoCodeStatus::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          company_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          first: Integer,
          last: Integer,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          status: WhopSDK::PromoCodeStatus::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list promo codes for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return promo codes created after this timestamp.
        created_after: nil,
        # Only return promo codes created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter to only promo codes scoped to these plan identifiers.
        plan_ids: nil,
        # Filter to only promo codes scoped to these product identifiers.
        product_ids: nil,
        # Filter to only promo codes matching this status.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: String,
            before: String,
            created_after: Time,
            created_before: Time,
            first: Integer,
            last: Integer,
            plan_ids: T::Array[String],
            product_ids: T::Array[String],
            status: WhopSDK::PromoCodeStatus::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
