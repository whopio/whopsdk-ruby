# typed: strong

module WhopSDK
  module Models
    class Company < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Company, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the company.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # The datetime the company was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The creator pitch for the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::TaggedSymbol)) }
      attr_accessor :industry_type

      # The company's logo.
      sig { returns(T.nilable(WhopSDK::Company::Logo)) }
      attr_reader :logo

      sig { params(logo: T.nilable(WhopSDK::Company::Logo::OrHash)).void }
      attr_writer :logo

      # The number of members in the company.
      sig { returns(Integer) }
      attr_accessor :member_count

      # A key-value store of data for the account, created/updated by the platform that
      # made the account.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The user who owns this company
      sig { returns(WhopSDK::Company::OwnerUser) }
      attr_reader :owner_user

      sig { params(owner_user: WhopSDK::Company::OwnerUser::OrHash).void }
      attr_writer :owner_user

      # The number of reviews that have been published for the company.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The slug/route of the company on the Whop site.
      sig { returns(String) }
      attr_accessor :route

      # Whether Whop sends transactional emails to customers on behalf of this company.
      sig { returns(T::Boolean) }
      attr_accessor :send_customer_emails

      # The social media accounts of the company
      sig { returns(T::Array[WhopSDK::Company::SocialLink]) }
      attr_accessor :social_links

      # The title of the company.
      sig { returns(String) }
      attr_accessor :title

      # The datetime the company was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # If the company is Whop Verified
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # A company is a seller on Whop. Companies own products, manage members, and
      # receive payouts.
      sig do
        params(
          id: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          created_at: Time,
          description: T.nilable(String),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
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
        # The different business types a company can be.
        business_type:,
        # The datetime the company was created.
        created_at:,
        # The creator pitch for the company.
        description:,
        # The different industry types a company can be in.
        industry_type:,
        # The company's logo.
        logo:,
        # The number of members in the company.
        member_count:,
        # A key-value store of data for the account, created/updated by the platform that
        # made the account.
        metadata:,
        # The user who owns this company
        owner_user:,
        # The number of reviews that have been published for the company.
        published_reviews_count:,
        # The slug/route of the company on the Whop site.
        route:,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        send_customer_emails:,
        # The social media accounts of the company
        social_links:,
        # The title of the company.
        title:,
        # The datetime the company was last updated.
        updated_at:,
        # If the company is Whop Verified
        verified:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_type: T.nilable(WhopSDK::BusinessTypes::TaggedSymbol),
            created_at: Time,
            description: T.nilable(String),
            industry_type: T.nilable(WhopSDK::IndustryTypes::TaggedSymbol),
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

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The company's logo.
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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
          # The unique identifier for the user.
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

      class SocialLink < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Company::SocialLink, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the social link.
        sig { returns(String) }
        attr_accessor :id

        # The URL
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
          # The URL
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
