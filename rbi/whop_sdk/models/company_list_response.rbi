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

      # The ID (tag) of the company.
      sig { returns(String) }
      attr_accessor :id

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::TaggedSymbol)) }
      attr_accessor :business_type

      # When the company was created (signed up)
      sig { returns(Time) }
      attr_accessor :created_at

      # The creator pitch for the company.
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

      # The number of members in the company.
      sig { returns(Integer) }
      attr_accessor :member_count

      # A key-value store of data for the account, created/updated by the platform that
      # made the account.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The user who owns this company
      sig { returns(WhopSDK::Models::CompanyListResponse::OwnerUser) }
      attr_reader :owner_user

      sig do
        params(
          owner_user: WhopSDK::Models::CompanyListResponse::OwnerUser::OrHash
        ).void
      end
      attr_writer :owner_user

      # The number of reviews that have been published for the company.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The slug/route of the company on the Whop site.
      sig { returns(String) }
      attr_accessor :route

      # The title of the company.
      sig { returns(String) }
      attr_accessor :title

      # The time the company was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # If the company is Whop Verified
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # An object representing a (sanitized) company.
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
          title: String,
          updated_at: Time,
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
            T.any(
              WhopSDK::Models::CompanyListResponse::OwnerUser,
              WhopSDK::Internal::AnyHash
            )
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
    end
  end
end
