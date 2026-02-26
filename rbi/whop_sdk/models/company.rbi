# typed: strong

module WhopSDK
  module Models
    class Company < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Company, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the company.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the company was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # A promotional pitch written by the company creator, displayed to potential
      # customers on the store page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The company's logo.
      sig { returns(T.nilable(WhopSDK::Company::Logo)) }
      attr_reader :logo

      sig { params(logo: T.nilable(WhopSDK::Company::Logo::OrHash)).void }
      attr_writer :logo

      # The total number of users who currently hold active memberships across all of
      # this company's products.
      sig { returns(Integer) }
      attr_accessor :member_count

      # A key-value JSON object of custom metadata for this company, managed by the
      # platform that created the account.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The user who owns and has full administrative control over this company.
      sig { returns(WhopSDK::Company::OwnerUser) }
      attr_reader :owner_user

      sig { params(owner_user: WhopSDK::Company::OwnerUser::OrHash).void }
      attr_writer :owner_user

      # The total number of published customer reviews across all products for this
      # company.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
      sig { returns(String) }
      attr_accessor :route

      # Whether Whop sends transactional emails (receipts, updates) to customers on
      # behalf of this company.
      sig { returns(T::Boolean) }
      attr_accessor :send_customer_emails

      # The list of social media accounts and external links associated with this
      # company.
      sig { returns(T::Array[WhopSDK::Company::SocialLink]) }
      attr_accessor :social_links

      # The display name of the company shown to customers.
      sig { returns(String) }
      attr_accessor :title

      # The datetime the company was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Whether this company has been verified by Whop's trust and safety team.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # A company is a seller on Whop. Companies own products, manage members, and
      # receive payouts.
      sig do
        params(
          id: String,
          created_at: Time,
          description: T.nilable(String),
          logo: T.nilable(WhopSDK::Company::Logo::OrHash),
          member_count: Integer,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          owner_user: WhopSDK::Company::OwnerUser::OrHash,
          published_reviews_count: Integer,
          route: String,
          send_customer_emails: T::Boolean,
          social_links: T::Array[WhopSDK::Company::SocialLink::OrHash],
          title: String,
          updated_at: Time,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the company.
        id:,
        # The datetime the company was created.
        created_at:,
        # A promotional pitch written by the company creator, displayed to potential
        # customers on the store page.
        description:,
        # The company's logo.
        logo:,
        # The total number of users who currently hold active memberships across all of
        # this company's products.
        member_count:,
        # A key-value JSON object of custom metadata for this company, managed by the
        # platform that created the account.
        metadata:,
        # The user who owns and has full administrative control over this company.
        owner_user:,
        # The total number of published customer reviews across all products for this
        # company.
        published_reviews_count:,
        # The URL slug for the company's store page (e.g., 'pickaxe' in whop.com/pickaxe).
        route:,
        # Whether Whop sends transactional emails (receipts, updates) to customers on
        # behalf of this company.
        send_customer_emails:,
        # The list of social media accounts and external links associated with this
        # company.
        social_links:,
        # The display name of the company shown to customers.
        title:,
        # The datetime the company was last updated.
        updated_at:,
        # Whether this company has been verified by Whop's trust and safety team.
        verified:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            description: T.nilable(String),
            logo: T.nilable(WhopSDK::Company::Logo),
            member_count: Integer,
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            owner_user: WhopSDK::Company::OwnerUser,
            published_reviews_count: Integer,
            route: String,
            send_customer_emails: T::Boolean,
            social_links: T::Array[WhopSDK::Company::SocialLink],
            title: String,
            updated_at: Time,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Company::Logo, WhopSDK::Internal::AnyHash)
          end

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The company's logo.
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig { override.returns({ url: T.nilable(String) }) }
        def to_hash
        end
      end

      class OwnerUser < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Company::OwnerUser, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user who owns and has full administrative control over this company.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
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

      class SocialLink < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Company::SocialLink, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the social link.
        sig { returns(String) }
        attr_accessor :id

        # The URL of the social media profile or external link.
        sig { returns(String) }
        attr_accessor :url

        # The website
        sig { returns(WhopSDK::Company::SocialLink::Website::TaggedSymbol) }
        attr_accessor :website

        # A social link attached to a resource on the site.
        sig do
          params(
            id: String,
            url: String,
            website: WhopSDK::Company::SocialLink::Website::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the social link.
          id:,
          # The URL of the social media profile or external link.
          url:,
          # The website
          website:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              url: String,
              website: WhopSDK::Company::SocialLink::Website::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The website
        module Website
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Company::SocialLink::Website)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          X = T.let(:x, WhopSDK::Company::SocialLink::Website::TaggedSymbol)
          INSTAGRAM =
            T.let(
              :instagram,
              WhopSDK::Company::SocialLink::Website::TaggedSymbol
            )
          FACEBOOK =
            T.let(
              :facebook,
              WhopSDK::Company::SocialLink::Website::TaggedSymbol
            )
          TIKTOK =
            T.let(:tiktok, WhopSDK::Company::SocialLink::Website::TaggedSymbol)
          YOUTUBE =
            T.let(:youtube, WhopSDK::Company::SocialLink::Website::TaggedSymbol)
          LINKEDIN =
            T.let(
              :linkedin,
              WhopSDK::Company::SocialLink::Website::TaggedSymbol
            )
          TWITCH =
            T.let(:twitch, WhopSDK::Company::SocialLink::Website::TaggedSymbol)
          WEBSITE =
            T.let(:website, WhopSDK::Company::SocialLink::Website::TaggedSymbol)
          CUSTOM =
            T.let(:custom, WhopSDK::Company::SocialLink::Website::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Company::SocialLink::Website::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
