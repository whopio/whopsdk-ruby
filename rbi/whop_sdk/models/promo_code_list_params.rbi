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

      # The ID of the company to list promo codes for
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Filter promo codes by plan ID(s)
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # Filter promo codes by product ID(s)
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
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          status: T.nilable(WhopSDK::PromoCodeStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to list promo codes for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter promo codes by plan ID(s)
        plan_ids: nil,
        # Filter promo codes by product ID(s)
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
