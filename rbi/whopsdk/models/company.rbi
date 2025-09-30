# typed: strong

module Whopsdk
  module Models
    class Company < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Company, Whopsdk::Internal::AnyHash) }

      # The ID (tag) of the company.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(Whopsdk::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # When the company was created (signed up)
      sig { returns(Integer) }
      attr_accessor :created_at

      # The different industry types a company can be in.
      sig { returns(T.nilable(Whopsdk::IndustryTypes::TaggedSymbol)) }
      attr_accessor :industry_type

      # The number of members in the company.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The user who owns this company
      sig { returns(Whopsdk::Company::OwnerUser) }
      attr_reader :owner_user

      sig { params(owner_user: Whopsdk::Company::OwnerUser::OrHash).void }
      attr_writer :owner_user

      # The number of reviews that have been published for the company.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The slug/route of the company on the Whop site.
      sig { returns(String) }
      attr_accessor :route

      # The social media accounts of the company
      sig { returns(T::Array[Whopsdk::Company::SocialLink]) }
      attr_accessor :social_links

      # The title of the company.
      sig { returns(String) }
      attr_accessor :title

      # The time the company was last updated.
      sig { returns(Integer) }
      attr_accessor :updated_at

      # If the company is Whop Verified
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # An object representing a (sanitized) company.
      sig do
        params(
          id: String,
          business_type: T.nilable(Whopsdk::BusinessTypes::OrSymbol),
          created_at: Integer,
          industry_type: T.nilable(Whopsdk::IndustryTypes::OrSymbol),
          member_count: Integer,
          owner_user: Whopsdk::Company::OwnerUser::OrHash,
          published_reviews_count: Integer,
          route: String,
          social_links: T::Array[Whopsdk::Company::SocialLink::OrHash],
          title: String,
          updated_at: Integer,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID (tag) of the company.
        id:,
        # The different business types a company can be.
        business_type:,
        # When the company was created (signed up)
        created_at:,
        # The different industry types a company can be in.
        industry_type:,
        # The number of members in the company.
        member_count:,
        # The user who owns this company
        owner_user:,
        # The number of reviews that have been published for the company.
        published_reviews_count:,
        # The slug/route of the company on the Whop site.
        route:,
        # The social media accounts of the company
        social_links:,
        # The title of the company.
        title:,
        # The time the company was last updated.
        updated_at:,
        # If the company is Whop Verified
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
            owner_user: Whopsdk::Company::OwnerUser,
            published_reviews_count: Integer,
            route: String,
            social_links: T::Array[Whopsdk::Company::SocialLink],
            title: String,
            updated_at: Integer,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      class OwnerUser < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Company::OwnerUser, Whopsdk::Internal::AnyHash)
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

        # The user who owns this company
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

      class SocialLink < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Company::SocialLink, Whopsdk::Internal::AnyHash)
          end

        # The ID
        sig { returns(String) }
        attr_accessor :id

        # The URL
        sig { returns(String) }
        attr_accessor :url

        # The different websites you can have social links for
        sig do
          returns(
            T.nilable(Whopsdk::Company::SocialLink::Website::TaggedSymbol)
          )
        end
        attr_accessor :website

        # A social link attached to a resource on the site.
        sig do
          params(
            id: String,
            url: String,
            website: T.nilable(Whopsdk::Company::SocialLink::Website::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID
          id:,
          # The URL
          url:,
          # The different websites you can have social links for
          website:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              url: String,
              website:
                T.nilable(Whopsdk::Company::SocialLink::Website::TaggedSymbol)
            }
          )
        end
        def to_hash
        end

        # The different websites you can have social links for
        module Website
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Whopsdk::Company::SocialLink::Website)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          X = T.let(:x, Whopsdk::Company::SocialLink::Website::TaggedSymbol)
          INSTAGRAM =
            T.let(
              :instagram,
              Whopsdk::Company::SocialLink::Website::TaggedSymbol
            )
          FACEBOOK =
            T.let(
              :facebook,
              Whopsdk::Company::SocialLink::Website::TaggedSymbol
            )
          TIKTOK =
            T.let(:tiktok, Whopsdk::Company::SocialLink::Website::TaggedSymbol)
          YOUTUBE =
            T.let(:youtube, Whopsdk::Company::SocialLink::Website::TaggedSymbol)
          LINKEDIN =
            T.let(
              :linkedin,
              Whopsdk::Company::SocialLink::Website::TaggedSymbol
            )
          TWITCH =
            T.let(:twitch, Whopsdk::Company::SocialLink::Website::TaggedSymbol)
          WEBSITE =
            T.let(:website, Whopsdk::Company::SocialLink::Website::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Whopsdk::Company::SocialLink::Website::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
