# typed: strong

module WhopSDK
  module Models
    class ProductListItem < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductListItem, WhopSDK::Internal::AnyHash)
        end

      # The internal ID of the public product.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # When the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The headline of the product.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::TaggedSymbol)) }
      attr_accessor :industry_type

      # The number of active users for this product.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The number of reviews that have been published for the product.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The route of the product.
      sig { returns(String) }
      attr_accessor :route

      # The title of the product. Use for Whop 4.0.
      sig { returns(String) }
      attr_accessor :title

      # When the product was updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Whether this product is Whop verified.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # This product will/will not be displayed publicly.
      sig { returns(WhopSDK::Visibility::TaggedSymbol) }
      attr_accessor :visibility

      # An object representing a (sanitized) access pass.
      sig do
        params(
          id: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          created_at: Time,
          headline: T.nilable(String),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          member_count: Integer,
          published_reviews_count: Integer,
          route: String,
          title: String,
          updated_at: Time,
          verified: T::Boolean,
          visibility: WhopSDK::Visibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the public product.
        id:,
        # The different business types a company can be.
        business_type:,
        # When the product was created.
        created_at:,
        # The headline of the product.
        headline:,
        # The different industry types a company can be in.
        industry_type:,
        # The number of active users for this product.
        member_count:,
        # The number of reviews that have been published for the product.
        published_reviews_count:,
        # The route of the product.
        route:,
        # The title of the product. Use for Whop 4.0.
        title:,
        # When the product was updated.
        updated_at:,
        # Whether this product is Whop verified.
        verified:,
        # This product will/will not be displayed publicly.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_type: T.nilable(WhopSDK::BusinessTypes::TaggedSymbol),
            created_at: Time,
            headline: T.nilable(String),
            industry_type: T.nilable(WhopSDK::IndustryTypes::TaggedSymbol),
            member_count: Integer,
            published_reviews_count: Integer,
            route: String,
            title: String,
            updated_at: Time,
            verified: T::Boolean,
            visibility: WhopSDK::Visibility::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
