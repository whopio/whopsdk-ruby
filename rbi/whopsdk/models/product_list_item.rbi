# typed: strong

module Whopsdk
  module Models
    class ProductListItem < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::ProductListItem, Whopsdk::Internal::AnyHash)
        end

      # The internal ID of the public access pass.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(Whopsdk::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # When the access pass was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The headline of the access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry types a company can be in.
      sig { returns(T.nilable(Whopsdk::IndustryTypes::TaggedSymbol)) }
      attr_accessor :industry_type

      # The number of active users for this access pass.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The number of reviews that have been published for the access pass.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The route of the access pass.
      sig { returns(String) }
      attr_accessor :route

      # The title of the access pass. Use for Whop 4.0.
      sig { returns(String) }
      attr_accessor :title

      # When the access pass was updated.
      sig { returns(Integer) }
      attr_accessor :updated_at

      # Whether this product is Whop verified.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # Visibility of a resource
      sig do
        returns(T.nilable(Whopsdk::ProductListItem::Visibility::TaggedSymbol))
      end
      attr_accessor :visibility

      # An object representing a (sanitized) access pass.
      sig do
        params(
          id: String,
          business_type: T.nilable(Whopsdk::BusinessTypes::OrSymbol),
          created_at: Integer,
          headline: T.nilable(String),
          industry_type: T.nilable(Whopsdk::IndustryTypes::OrSymbol),
          member_count: Integer,
          published_reviews_count: Integer,
          route: String,
          title: String,
          updated_at: Integer,
          verified: T::Boolean,
          visibility: T.nilable(Whopsdk::ProductListItem::Visibility::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the public access pass.
        id:,
        # The different business types a company can be.
        business_type:,
        # When the access pass was created.
        created_at:,
        # The headline of the access pass.
        headline:,
        # The different industry types a company can be in.
        industry_type:,
        # The number of active users for this access pass.
        member_count:,
        # The number of reviews that have been published for the access pass.
        published_reviews_count:,
        # The route of the access pass.
        route:,
        # The title of the access pass. Use for Whop 4.0.
        title:,
        # When the access pass was updated.
        updated_at:,
        # Whether this product is Whop verified.
        verified:,
        # Visibility of a resource
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_type: T.nilable(Whopsdk::BusinessTypes::TaggedSymbol),
            created_at: Integer,
            headline: T.nilable(String),
            industry_type: T.nilable(Whopsdk::IndustryTypes::TaggedSymbol),
            member_count: Integer,
            published_reviews_count: Integer,
            route: String,
            title: String,
            updated_at: Integer,
            verified: T::Boolean,
            visibility:
              T.nilable(Whopsdk::ProductListItem::Visibility::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      # Visibility of a resource
      module Visibility
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::ProductListItem::Visibility) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VISIBLE =
          T.let(:visible, Whopsdk::ProductListItem::Visibility::TaggedSymbol)
        HIDDEN =
          T.let(:hidden, Whopsdk::ProductListItem::Visibility::TaggedSymbol)
        ARCHIVED =
          T.let(:archived, Whopsdk::ProductListItem::Visibility::TaggedSymbol)
        QUICK_LINK =
          T.let(:quick_link, Whopsdk::ProductListItem::Visibility::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::ProductListItem::Visibility::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
