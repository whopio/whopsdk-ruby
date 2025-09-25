# typed: strong

module Whopsdk
  module Models
    class AccessPassListItem < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::AccessPassListItem, Whopsdk::Internal::AnyHash)
        end

      # The internal ID of the public access pass.
      sig { returns(String) }
      attr_accessor :id

      # The type of business the company is.
      sig { returns(T.nilable(Whopsdk::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # When the access pass was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The specific industry the company operates in.
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

      # An object representing a (sanitized) access pass.
      sig do
        params(
          id: String,
          business_type: T.nilable(Whopsdk::BusinessTypes::OrSymbol),
          created_at: Integer,
          industry_type: T.nilable(Whopsdk::IndustryTypes::OrSymbol),
          member_count: Integer,
          published_reviews_count: Integer,
          route: String,
          title: String,
          updated_at: Integer,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the public access pass.
        id:,
        # The type of business the company is.
        business_type:,
        # When the access pass was created.
        created_at:,
        # The specific industry the company operates in.
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
        verified:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_type: T.nilable(Whopsdk::BusinessTypes::TaggedSymbol),
            created_at: Integer,
            industry_type: T.nilable(Whopsdk::IndustryTypes::TaggedSymbol),
            member_count: Integer,
            published_reviews_count: Integer,
            route: String,
            title: String,
            updated_at: Integer,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
