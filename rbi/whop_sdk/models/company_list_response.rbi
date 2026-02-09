# typed: strong

module WhopSDK
  module Models
    class CompanyListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CompanyListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the company.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # The datetime the company was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # A promotional pitch written by the company creator, displayed to potential
      # customers on the store page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::TaggedSymbol)) }
      attr_accessor :industry_type

      # The company's logo.
      sig { returns(T.nilable(WhopSDK::Models::CompanyListResponse::Logo)) }
      attr_reader :logo

      sig do
        params(
          logo: T.nilable(WhopSDK::Models::CompanyListResponse::Logo::OrHash)
        ).void
      end
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
      sig { returns(WhopSDK::Models::CompanyListResponse::OwnerUser) }
      attr_reader :owner_user

      sig do
        params(
          owner_user: WhopSDK::Models::CompanyListResponse::OwnerUser::OrHash
        ).void
      end
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
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          created_at: Time,
          description: T.nilable(String),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::Models::CompanyListResponse::Logo::OrHash),
          member_count: Integer,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          owner_user: WhopSDK::Models::CompanyListResponse::OwnerUser::OrHash,
          published_reviews_count: Integer,
          route: String,
          send_customer_emails: T::Boolean,
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
        # A promotional pitch written by the company creator, displayed to potential
        # customers on the store page.
        description:,
        # The different industry types a company can be in.
        industry_type:,
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
            business_type: T.nilable(WhopSDK::BusinessTypes::TaggedSymbol),
            created_at: Time,
            description: T.nilable(String),
            industry_type: T.nilable(WhopSDK::IndustryTypes::TaggedSymbol),
            logo: T.nilable(WhopSDK::Models::CompanyListResponse::Logo),
            member_count: Integer,
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            owner_user: WhopSDK::Models::CompanyListResponse::OwnerUser,
            published_reviews_count: Integer,
            route: String,
            send_customer_emails: T::Boolean,
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
            T.any(
              WhopSDK::Models::CompanyListResponse::Logo,
              WhopSDK::Internal::AnyHash
            )
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
            T.any(
              WhopSDK::Models::CompanyListResponse::OwnerUser,
              WhopSDK::Internal::AnyHash
            )
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
    end
  end
end
