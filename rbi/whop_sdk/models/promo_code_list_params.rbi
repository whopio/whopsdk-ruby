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
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Only return promo codes created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return promo codes created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Filter to only promo codes scoped to these plan identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # Filter to only promo codes scoped to these product identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # Statuses for promo codes
      sig { returns(T.nilable(WhopSDK::PromoCodeStatus::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          status: T.nilable(WhopSDK::PromoCodeStatus::OrSymbol),
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
        # Statuses for promo codes
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            plan_ids: T.nilable(T::Array[String]),
            product_ids: T.nilable(T::Array[String]),
            status: T.nilable(WhopSDK::PromoCodeStatus::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
