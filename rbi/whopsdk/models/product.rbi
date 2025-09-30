# typed: strong

module Whopsdk
  module Models
    class Product < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Product, Whopsdk::Internal::AnyHash) }

      # The internal ID of the public access pass.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(Whopsdk::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # A short type of the company that this access pass belongs to.
      sig { returns(Whopsdk::Product::Company) }
      attr_reader :company

      sig { params(company: Whopsdk::Product::Company::OrHash).void }
      attr_writer :company

      # When the access pass was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The different industry types a company can be in.
      sig { returns(T.nilable(Whopsdk::IndustryTypes::TaggedSymbol)) }
      attr_accessor :industry_type

      # The number of active users for this access pass.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The user that owns the access pass (company owner).
      sig { returns(Whopsdk::Product::OwnerUser) }
      attr_reader :owner_user

      sig { params(owner_user: Whopsdk::Product::OwnerUser::OrHash).void }
      attr_writer :owner_user

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
          company: Whopsdk::Product::Company::OrHash,
          created_at: Integer,
          industry_type: T.nilable(Whopsdk::IndustryTypes::OrSymbol),
          member_count: Integer,
          owner_user: Whopsdk::Product::OwnerUser::OrHash,
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
        # The different business types a company can be.
        business_type:,
        # A short type of the company that this access pass belongs to.
        company:,
        # When the access pass was created.
        created_at:,
        # The different industry types a company can be in.
        industry_type:,
        # The number of active users for this access pass.
        member_count:,
        # The user that owns the access pass (company owner).
        owner_user:,
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
            company: Whopsdk::Product::Company,
            created_at: Integer,
            industry_type: T.nilable(Whopsdk::IndustryTypes::TaggedSymbol),
            member_count: Integer,
            owner_user: Whopsdk::Product::OwnerUser,
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

      class Company < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Product::Company, Whopsdk::Internal::AnyHash)
          end

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The slug/route of the company on the Whop site.
        sig { returns(String) }
        attr_accessor :route

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # A short type of the company that this access pass belongs to.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID (tag) of the company.
          id:,
          # The slug/route of the company on the Whop site.
          route:,
          # The title of the company.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end

      class OwnerUser < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Product::OwnerUser, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user that owns the access pass (company owner).
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
