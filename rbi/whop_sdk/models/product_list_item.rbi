# typed: strong

module WhopSDK
  module Models
    class ProductListItem < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductListItem, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the product.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # The datetime the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # A unique identifier used to create or update products via the API. When provided
      # on product creation endpoints, an existing product with this identifier will be
      # updated instead of creating a new one.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_identifier

      # A short marketing headline displayed prominently on the product's product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::TaggedSymbol)) }
      attr_accessor :industry_type

      # The number of users who currently hold an active membership to this product.
      # Returns 0 if the company has disabled public member counts.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The total number of published customer reviews for this product's company.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The URL slug used in the product's public link (e.g., 'my-product' in
      # whop.com/company/my-product).
      sig { returns(String) }
      attr_accessor :route

      # The display name of the product shown to customers on the product page and in
      # search results.
      sig { returns(String) }
      attr_accessor :title

      # The datetime the product was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Whether this company has been verified by Whop's trust and safety team.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # Controls whether the product is visible to customers. When set to 'hidden', the
      # product is only accessible via direct link.
      sig { returns(WhopSDK::Visibility::TaggedSymbol) }
      attr_accessor :visibility

      # A product is a digital good or service sold on Whop. Products contain plans for
      # pricing and experiences for content delivery.
      sig do
        params(
          id: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          created_at: Time,
          external_identifier: T.nilable(String),
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
        # The unique identifier for the product.
        id:,
        # The different business types a company can be.
        business_type:,
        # The datetime the product was created.
        created_at:,
        # A unique identifier used to create or update products via the API. When provided
        # on product creation endpoints, an existing product with this identifier will be
        # updated instead of creating a new one.
        external_identifier:,
        # A short marketing headline displayed prominently on the product's product page.
        headline:,
        # The different industry types a company can be in.
        industry_type:,
        # The number of users who currently hold an active membership to this product.
        # Returns 0 if the company has disabled public member counts.
        member_count:,
        # The total number of published customer reviews for this product's company.
        published_reviews_count:,
        # The URL slug used in the product's public link (e.g., 'my-product' in
        # whop.com/company/my-product).
        route:,
        # The display name of the product shown to customers on the product page and in
        # search results.
        title:,
        # The datetime the product was last updated.
        updated_at:,
        # Whether this company has been verified by Whop's trust and safety team.
        verified:,
        # Controls whether the product is visible to customers. When set to 'hidden', the
        # product is only accessible via direct link.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_type: T.nilable(WhopSDK::BusinessTypes::TaggedSymbol),
            created_at: Time,
            external_identifier: T.nilable(String),
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
